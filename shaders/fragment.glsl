#version 330 core
in vec3 vertexColor;

out vec4 FragColor;

uniform float time;

void main()
{
    vec3 color = vertexColor;
    color.r = 0.5 + 0.5 * sin(time + color.r);
    color.g = 0.5 + 0.5 * sin(time + color.g + 2.0);
    color.b = 0.5 + 0.5 * sin(time + color.b + 4.0);
    FragColor = vec4(color, 1.0);
}
