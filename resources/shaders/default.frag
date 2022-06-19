#version 330 core

out vec4 FragColor;

in vec3 vertexColor;
in vec2 uv;
in vec3 normal;
in vec4 worldPixel;

uniform sampler2D diffuseSampler;

void main()
{
    vec3 camPos = vec3(2, 1, -2);

    vec4 diffuseColor  = texture(diffuseSampler, uv);

    vec3 lightDir = vec3(-1, 0, 0);
    float light = max(dot(-lightDir, normal), .25);

    vec3 viewDir = normalize(worldPixel.xyz - camPos);
    vec3 refl = normalize(reflect(-lightDir, normal));
    float phong = pow(max(dot(refl, viewDir), 0.0), 128);

    FragColor = diffuseColor * light + phong * diffuseColor;
}