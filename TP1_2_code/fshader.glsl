#version 330 core
#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform sampler2D texture;

varying vec2 v_texcoord;

out vec4 color;

//! [0]
void main()
{
    // Set fragment color from texture
   gl_FragColor = texture2D(texture, v_texcoord);
  //color=vec4(0.8f,0.7f,0.4f,1.0f);
}
//! [0]

