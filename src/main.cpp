#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include "Shader.h"

#define STB_IMAGE_IMPLEMENTATION

#include "stb_image.h"

#define WINDOW_WIDTH 1280
#define WINDOW_HEIGHT 720

glm::vec3 cameraPosition(0, 5, 0), cameraForward(0, 1, 0), cameraUp(0, 0, 1);

uint32_t loadTexture(const std::string& url, GLenum format);

void processInput(GLFWwindow *window);
void handleInput(GLFWwindow *window, float deltaTime);

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
}

void error_callback(int error, const char *msg) {
    std::string s;
    s = " [" + std::to_string(error) + "] " + msg + '\n';
    std::cerr << s << std::endl;
}

int main() {
    glfwSetErrorCallback(error_callback);
    if (GL_TRUE != glfwInit())
        std::cerr << "Error initialising glfw" << std::endl;
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);

    // Create a window
    GLFWwindow *window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "LearnOpenGL", nullptr, nullptr);
    if (window == nullptr) {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);

    if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress)) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    const GLubyte* vendor = glGetString(GL_VENDOR); // Returns the vendor
    const GLubyte* renderer = glGetString(GL_RENDERER); // Returns a hint to the model

    std::cout << "vender: " << vendor << " - renderer: " << renderer << std::endl;

    // If you set the values differently from the window w/h and 0,0 you can display other things outside the openGL
    // viewport
    glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
    // This is an event that is called when the window is resized
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // SHADERS
    Shader defaultShader("resources/shaders/default.vert", "resources/shaders/default.frag");
    Shader skyShader("resources/shaders/sky.vert", "resources/shaders/sky.frag");

    // need 24 vertices for normal/uv-mapped Cube
    float vertices[] = {
            // positions            //colors            // tex coords   // normals
            0.5f, -0.5f, -0.5f, 1.0f, 1.0f, 1.0f, 1.f, 0.f, 0.f, -1.f, 0.f,
            0.5f, -0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 1.f, 1.f, 0.f, -1.f, 0.f,
            -0.5f, -0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 0.f, 1.f, 0.f, -1.f, 0.f,
            -0.5f, -0.5f, -.5f, 1.0f, 1.0f, 1.0f, 0.f, 0.f, 0.f, -1.f, 0.f,

            0.5f, 0.5f, -0.5f, 1.0f, 1.0f, 1.0f, 2.f, 0.f, 1.f, 0.f, 0.f,
            0.5f, 0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 2.f, 1.f, 1.f, 0.f, 0.f,

            0.5f, 0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 1.f, 2.f, 0.f, 0.f, 1.f,
            -0.5f, 0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 0.f, 2.f, 0.f, 0.f, 1.f,

            -0.5f, 0.5f, 0.5f, 1.0f, 1.0f, 1.0f, -1.f, 1.f, -1.f, 0.f, 0.f,
            -0.5f, 0.5f, -.5f, 1.0f, 1.0f, 1.0f, -1.f, 0.f, -1.f, 0.f, 0.f,

            -0.5f, 0.5f, -.5f, 1.0f, 1.0f, 1.0f, 0.f, -1.f, 0.f, 0.f, -1.f,
            0.5f, 0.5f, -0.5f, 1.0f, 1.0f, 1.0f, 1.f, -1.f, 0.f, 0.f, -1.f,

            -0.5f, 0.5f, -.5f, 1.0f, 1.0f, 1.0f, 3.f, 0.f, 0.f, 1.f, 0.f,
            -0.5f, 0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 3.f, 1.f, 0.f, 1.f, 0.f,

            0.5f, -0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 1.f, 1.f, 0.f, 0.f, 1.f,
            -0.5f, -0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 0.f, 1.f, 0.f, 0.f, 1.f,

            -0.5f, -0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 0.f, 1.f, -1.f, 0.f, 0.f,
            -0.5f, -0.5f, -.5f, 1.0f, 1.0f, 1.0f, 0.f, 0.f, -1.f, 0.f, 0.f,

            -0.5f, -0.5f, -.5f, 1.0f, 1.0f, 1.0f, 0.f, 0.f, 0.f, 0.f, -1.f,
            0.5f, -0.5f, -0.5f, 1.0f, 1.0f, 1.0f, 1.f, 0.f, 0.f, 0.f, -1.f,

            0.5f, -0.5f, -0.5f, 1.0f, 1.0f, 1.0f, 1.f, 0.f, 1.f, 0.f, 0.f,
            0.5f, -0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 1.f, 1.f, 1.f, 0.f, 0.f,

            0.5f, 0.5f, -0.5f, 1.0f, 1.0f, 1.0f, 2.f, 0.f, 0.f, 1.f, 0.f,
            0.5f, 0.5f, 0.5f, 1.0f, 1.0f, 1.0f, 2.f, 1.f, 0.f, 1.f, 0.f
    };

    unsigned int indices[] = {  // note that we start from 0!
            // DOWN
            0, 1, 2,   // first triangle
            0, 2, 3,    // second triangle
            // BACK
            14, 6, 7,   // first triangle
            14, 7, 15,    // second triangle
            // RIGHT
            20, 4, 5,   // first triangle
            20, 5, 21,    // second triangle
            // LEFT
            16, 8, 9,   // first triangle
            16, 9, 17,    // second triangle
            // FRONT
            18, 10, 11,   // first triangle
            18, 11, 19,    // second triangle
            // UP
            22, 12, 13,   // first triangle
            22, 13, 23,    // second triangle
    };

    unsigned int VBO, VAO, EBO;
    glGenBuffers(1, &VBO);
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &EBO);

    glBindVertexArray(VAO);

    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    const auto stride = sizeof(float) * 11;

    // position attribute
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, stride, (void *) 0); // NOLINT(modernize-use-nullptr)
    glEnableVertexAttribArray(0);
    // color attribute
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, stride, (void *) (3 * sizeof(float)));
    glEnableVertexAttribArray(1);
    // uv attribute
    glVertexAttribPointer(2, 2, GL_FLOAT, GL_FALSE, stride, (void *) (6 * sizeof(float)));
    glEnableVertexAttribArray(2);
    // normal attribute
    glVertexAttribPointer(3, 3, GL_FLOAT, GL_FALSE, stride, (void *) (8 * sizeof(float)));
    glEnableVertexAttribArray(3);

    // Unbind the buffer
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);

    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

    uint32_t diffuseTexId = loadTexture("resources/texture/crate.jpg", GL_RGB);

    defaultShader.use();
    int worldLoc = glGetUniformLocation(defaultShader.ID, "world");
    int viewLoc = glGetUniformLocation(defaultShader.ID, "view");
    int projectionLoc = glGetUniformLocation(defaultShader.ID, "projection");

    double lastTime = 0;

    glEnable(GL_CULL_FACE);

    // MAIN LOOP
    while (!glfwWindowShouldClose(window)) {
        double t = glfwGetTime();
        double deltaTime = t - lastTime;
        lastTime = t;
        processInput(window);
        handleInput(window, (float) deltaTime);

        glClear(GL_COLOR_BUFFER_BIT);

        glm::mat4 view = glm::lookAt(cameraPosition, cameraPosition + cameraForward, cameraUp);
        glm::mat4 projection = glm::perspective(glm::radians(85.0f), WINDOW_WIDTH / (float) WINDOW_HEIGHT, 0.1f,
                                                1000.0f);


        // SKYBOX
        skyShader.use();

        glCullFace(GL_FRONT);

        glm::mat4 world = glm::mat4(1.0f);
        world = glm::translate(world, cameraPosition);

        glUniformMatrix4fv(glGetUniformLocation(skyShader.ID, "world"), 1, GL_FALSE, glm::value_ptr(world));
        glUniformMatrix4fv(glGetUniformLocation(skyShader.ID, "view"), 1, GL_FALSE, glm::value_ptr(view));
        glUniformMatrix4fv(glGetUniformLocation(skyShader.ID, "projection"), 1, GL_FALSE, glm::value_ptr(projection));
        glUniform3fv(glGetUniformLocation(skyShader.ID, "cameraPosition"), 1, glm::value_ptr(cameraPosition));

        glBindVertexArray(VAO);
        glDrawElements(GL_TRIANGLES, sizeof(indices), GL_UNSIGNED_INT, nullptr);

//        glActiveTexture(GL_TEXTURE0);
//        glBindTexture(GL_TEXTURE_2D, diffuseTexId);

        glBindVertexArray(0);

        glfwSwapBuffers(window);
        glfwPollEvents();

//        std::cout << "frame time " << deltaTime << " fps " << static_cast<int>(1.0 / deltaTime) << std::endl;
    }

    glfwTerminate();
    return 0;
}

void handleInput(GLFWwindow * window, float deltaTime) {
    static bool w, s, a, d, space, ctrl;
    static double cursorX = -1, cursorY = -1, lastCursorX, lastCursorY;
    static float pitch, yaw;
    static float speed = 100.0f;

    float sensitivity = 50.0f * deltaTime;
    float step = speed * deltaTime;

    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)				w = true;
    else if (glfwGetKey(window, GLFW_KEY_W) == GLFW_RELEASE)		w = false;
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)				s = true;
    else if (glfwGetKey(window, GLFW_KEY_S) == GLFW_RELEASE)		s = false;
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)				a = true;
    else if (glfwGetKey(window, GLFW_KEY_A) == GLFW_RELEASE)		a = false;
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)				d = true;
    else if (glfwGetKey(window, GLFW_KEY_D) == GLFW_RELEASE)		d = false;

    if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_PRESS)				space = true;
    else if (glfwGetKey(window, GLFW_KEY_SPACE) == GLFW_RELEASE)		space = false;
    if (glfwGetKey(window, GLFW_KEY_LEFT_CONTROL) == GLFW_PRESS)		ctrl = true;
    else if (glfwGetKey(window, GLFW_KEY_LEFT_CONTROL) == GLFW_RELEASE)	ctrl = false;

    if (cursorX == -1) {
        glfwGetCursorPos(window, &cursorX, &cursorY);
    }

    lastCursorX = cursorX;
    lastCursorY = cursorY;
    glfwGetCursorPos(window, &cursorX, &cursorY);

    glm::vec2 mouseDelta(cursorX - lastCursorX, cursorY - lastCursorY);

    // TODO: calculate rotation & movement
    yaw += mouseDelta.x * sensitivity;
    pitch += mouseDelta.y * sensitivity;

    if (pitch < -90.0f) pitch = -90.0f;
    if (pitch > 90.0f) pitch = 90.0f;
    if (yaw < -180.0f) yaw += 360;
    else if (yaw > 180.0f) yaw -= 360;

    glm::quat q(glm::radians(glm::vec3(-pitch, yaw, 0)));

    // update camera position / forward & up
    glm::vec3 translation(0,0,0);
    cameraPosition += q * translation;

    cameraUp = q * glm::vec3(0, 1, 0);
    cameraForward = q * glm::vec3(0, 0, 1);
}

void processInput(GLFWwindow *window) {
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, true);
    }
}

uint32_t loadTexture(const std::string& url, GLenum format) {
    // Load and create texture
    uint32_t textureID;
    glGenTextures(1, &textureID);
    glBindTexture(GL_TEXTURE_2D, textureID);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);

    // Image load
    int32_t wdt, hgt, chn;
    unsigned char *img_data;
    img_data = stbi_load(url.c_str(), &wdt, &hgt, &chn, 0);
    if (img_data == nullptr) {
        std::cout << "Error loading file: " << url << std::endl;
    } else {
        std::cout << "Loaded texture \"" << url << "\": " << wdt << "x" << hgt << "px (" << chn << " channels)"
                  << std::endl;

        glTexImage2D(GL_TEXTURE_2D, 0, format, wdt, hgt, 0, format, GL_UNSIGNED_BYTE, img_data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }

    glBindTexture(GL_TEXTURE_2D, 0);
    stbi_image_free(img_data);

    return textureID;
}