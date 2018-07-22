varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 p = v_vTexcoord;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, p );  
	//Adjust your inner wave colour here!
	gl_FragColor.r = .59;
	gl_FragColor.g = .84;
	gl_FragColor.b = .90;
}