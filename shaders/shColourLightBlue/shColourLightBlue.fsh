varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 p = v_vTexcoord;
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, p );
	//Adjust your outer wave colour here!  
	gl_FragColor.r = .52;//.33;//
	gl_FragColor.g = .77;//.57;//
	gl_FragColor.b = .83;//.75;//
}