#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

#define WINDOW_WIDTH 1280
#define WINDOW_HEIGHT 720

const char *vertexShaderSource = "#version 330 core\n"
                                 "layout (location = 0) in vec3 aPos;\n"
                                 "void main()\n"
                                 "{\n"
                                 "   gl_Position = vec4(aPos.x, aPos.y, aPos.z, 1.0);\n"
                                 "}\0";

const char *fragShaderSource_orange = "#version 330 core\n"
                                      "out vec4 FragColor;\n"
                                      "\n"
                                      "void main()\n"
                                      "{\n"
                                      "    FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);\n"
                                      "}\0";

const char *fragShaderSource_blue = "#version 330 core\n"
                                    "out vec4 FragColor;\n"
                                    "\n"
                                    "void main()\n"
                                    "{\n"
                                    "    FragColor = vec4(0.18f, 0.96f, 0.93f, 1.0f);\n"
                                    "}\0";

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
}

int main() {
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    // Create a window
    GLFWwindow *window = glfwCreateWindow(WINDOW_WIDTH, WINDOW_HEIGHT, "LearnOpenGL", NULL, NULL);
    if (window == NULL) {
        std::cout << "Failed to create GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    glfwMakeContextCurrent(window);

    if (!gladLoadGLLoader((GLADloadproc) glfwGetProcAddress)) {
        std::cout << "Failed to initialize GLAD" << std::endl;
        return -1;
    }

    // If you set the values differently from the window w/h and 0,0 you can display other things outside the openGL
    // viewport
    glViewport(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    // CREATE SHADERS
    unsigned int vertexShader;
    vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexShaderSource, NULL);
    glCompileShader(vertexShader);

    {
        int success;
        char infoLog[512];
        glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
        if (!success) {
            glad_glGetShaderInfoLog(vertexShader, 512, NULL, infoLog);
            std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
        }
    }

    unsigned int fragmentShader_orange;
    fragmentShader_orange = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader_orange, 1, &fragShaderSource_orange, NULL);
    glCompileShader(fragmentShader_orange);

    int success;
    char infoLog[512];
    glGetShaderiv(fragmentShader_orange, GL_COMPILE_STATUS, &success);
    if (!success) {
        glad_glGetShaderInfoLog(fragmentShader_orange, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED\n" << infoLog << std::endl;
    }

    unsigned int fragmentShader_blue;
    fragmentShader_blue = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader_blue, 1, &fragShaderSource_blue, NULL);
    glCompileShader(fragmentShader_blue);

    glGetShaderiv(fragmentShader_blue, GL_COMPILE_STATUS, &success);
    if (!success) {
        glad_glGetShaderInfoLog(fragmentShader_blue, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::FRAGMENT::COMPILATION_FAILED " << success << "\n" << infoLog << std::endl;
    }

    unsigned int shaderProgram_orange;
    shaderProgram_orange = glCreateProgram();
    glAttachShader(shaderProgram_orange, vertexShader);
    glAttachShader(shaderProgram_orange, fragmentShader_orange);
    glLinkProgram(shaderProgram_orange);

    // check for linking errors
    glGetProgramiv(shaderProgram_orange, GL_LINK_STATUS, &success);
    if (!success) {
        glGetProgramInfoLog(shaderProgram_orange, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
    }

    unsigned int shaderProgram_blue;
    shaderProgram_blue = glCreateProgram();
    glAttachShader(shaderProgram_blue, vertexShader);
    glAttachShader(shaderProgram_blue, fragmentShader_blue);
    glLinkProgram(shaderProgram_blue);

    // check for linking errors
    glGetProgramiv(shaderProgram_blue, GL_LINK_STATUS, &success);
    if (!success) {
        glGetProgramInfoLog(shaderProgram_blue, 512, NULL, infoLog);
        std::cout << "ERROR::SHADER::PROGRAM::LINKING_FAILED\n" << infoLog << std::endl;
    }

    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader_orange);
    glDeleteShader(fragmentShader_blue);

    // VERTICES
    unsigned int VAO_right, VAO_left;
    {
        float vertices_right[] = {
                0.25f, 0.5f, 0.0f,  // top right
                0.25f, -0.5f, 0.0f,  // bottom right
                .4f, -0.5f, 0.0f,  // bottom left
                .4f, 0.5f, 0.0f   // top left
        };
        unsigned int indices_right[] = {
                0, 1, 3,
                1, 2, 3
        };

        unsigned int VBO_right, EBO_right;
        glGenBuffers(1, &VBO_right);
        glGenVertexArrays(1, &VAO_right);
        glGenBuffers(1, &EBO_right);

        glBindVertexArray(VAO_right);

        glBindBuffer(GL_ARRAY_BUFFER, VBO_right);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices_right), vertices_right, GL_STATIC_DRAW);

        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO_right);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices_right), indices_right, GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *) 0);
        glEnableVertexAttribArray(0);

        // Unbind the buffer
        glBindBuffer(GL_ARRAY_BUFFER, 0);
        glBindVertexArray(0);
    }

    // VERTICES
    {
        float vertices_left[] = {
                -0.25f, 0.5f, 0.0f,  // top right
                -0.25f, -0.5f, 0.0f,  // bottom right
                -.4f, -0.5f, 0.0f,  // bottom left
                -.4f, 0.5f, 0.0f   // top left
        };
        unsigned int indices_left[] = {
                3, 0, 2,
                0, 1, 2
        };

        unsigned int VBO_left, EBO_left;
        glGenBuffers(1, &VBO_left);
        glGenVertexArrays(1, &VAO_left);
        glGenBuffers(1, &EBO_left);

        glBindVertexArray(VAO_left);

        glBindBuffer(GL_ARRAY_BUFFER, VBO_left);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices_left), vertices_left, GL_STATIC_DRAW);

        glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO_left);
        glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices_left), indices_left, GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void *) 0);
        glEnableVertexAttribArray(0);

        // Unbind the buffer
        glBindBuffer(GL_ARRAY_BUFFER, 0);
        glBindVertexArray(0);
    }

//    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    while (!glfwWindowShouldClose(window)) {
        glClearColor(.2f, .3f, .3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glUseProgram(shaderProgram_blue);
        glBindVertexArray(VAO_right);
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
        glBindVertexArray(0);

        glUseProgram(shaderProgram_orange);
        glBindVertexArray(VAO_left);
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);
        glBindVertexArray(0);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}