#ifndef PROJECT_SHADER_H
#define PROJECT_SHADER_H

#include <glad/glad.h>

#include <string>
#include <fstream>
#include <sstream>
#include <iostream>

class Shader {
public:
    unsigned int ID;

    // constructor reads and builds the shader
    Shader(const char *vertexPath, const char *fragmentPath) {
        std::string vertexCode;
        std::string fragmentCode;
        std::ifstream vShaderFile;
        std::ifstream fShaderFile;

        vShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
        fShaderFile.exceptions(std::ifstream::failbit | std::ifstream::badbit);
        try {
            vShaderFile.open(vertexPath);
            fShaderFile.open(fragmentPath);
            std::stringstream vShaderStream, fShaderStream;

            //read
            vShaderStream << vShaderFile.rdbuf();
            fShaderStream << fShaderFile.rdbuf();

            // close file
            vShaderFile.close();
            fShaderFile.close();

            vertexCode = vShaderStream.str();
            fragmentCode = fShaderStream.str();
        }
        catch (std::ifstream::failure& e) {
            std::cout << "Error: while reading shader file" << std::endl;
            return;
        }
        const char *vShaderCode = vertexCode.c_str();
        const char *fShaderCode = fragmentCode.c_str();

        // COMPILE SHADERS
        unsigned int vert, frag;
        int success;
        char infoLog[512];

        //vert
        vert = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vert, 1, &vShaderCode, nullptr);
        glCompileShader(vert);
        glGetShaderiv(vert, GL_COMPILE_STATUS, &success);
        if (!success) {
            glGetShaderInfoLog(vert, 512, nullptr, infoLog);
            std::cout << "Failed to compile vertex shader\n\t" << infoLog << std::endl;
        }

        //vert
        frag = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(frag, 1, &fShaderCode, nullptr);
        glCompileShader(frag);
        glGetShaderiv(frag, GL_COMPILE_STATUS, &success);
        if (!success) {
            glGetShaderInfoLog(frag, 512, nullptr, infoLog);
            std::cout << "Failed to compile fragment shader\n\t" << infoLog << std::endl;
        }

        ID = glCreateProgram();
        glAttachShader(ID, vert);
        glAttachShader(ID, frag);
        glLinkProgram(ID);
        glGetProgramiv(ID, GL_LINK_STATUS, &success);
        if (!success) {
            glGetShaderInfoLog(frag, 512, nullptr, infoLog);
            std::cout << "Failed to link shader program\n\t" << infoLog << std::endl;
        }

        glDeleteShader(vert);
        glDeleteShader(frag);
    }

    // use/activate the shader
    void use() {
        glUseProgram(ID);
    }

    // utility uniform functions
    void setBool(const std::string& name, bool value) const {
        glUniform1i(glGetUniformLocation(ID, name.c_str()), (int) value);
    }

    void setInt(const std::string& name, int value) const {
        glUniform1i(glGetUniformLocation(ID, name.c_str()), value);
    }

    void setFloat(const std::string& name, float value) const {
        glUniform1f(glGetUniformLocation(ID, name.c_str()), value);
    }
};

#endif //PROJECT_SHADER_H
