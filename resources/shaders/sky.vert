#version 330 core

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;
layout (location = 2) in vec2 aUv;
layout (location = 3) in vec3 aNormal;

uniform mat4 world;
uniform mat4 view;
uniform mat4 projection;

out vec4 worldPixel;

void main()
{
    worldPixel = world * vec4(aPos, 1.0f);
    gl_Position = projection * view * world * vec4(aPos, 1.0f);
}