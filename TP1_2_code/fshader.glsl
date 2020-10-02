#version 330 core
#ifdef GL_ES
// Set default precision to medium
precision mediump int;
precision mediump float;
#endif

uniform sampler2D texture;
uniform sampler2D texture1;
uniform sampler2D texture2;
varying vec2 v_texcoord;
in vec4 poz;
out vec4 color;

//! [0]
void main()
{
    // Set fragment color from texture
  if(poz.z>0.4){
  color = texture2D(texture, v_texcoord);}else{
      if(poz.z<=0.4&&poz.z>0.32)

      {color = texture2D(texture1, v_texcoord);}else{

          color = texture2D(texture2, v_texcoord);

      }

  }







}
//! [0]

