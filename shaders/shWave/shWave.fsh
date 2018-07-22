/*

This shader just adds a few sine waves together to make a texture go all WAaaaAaaAaavy.
The effect will vary depending on the size of the texture sheet it is given.
Yeah, the texture sheet. NOT the individual sprite and definitely not the individual frame.
You can kind of get around this when using it with sprites by assigning them to their own texture sheet,
But you still have to work with the numbers to get it looking right.
One day I'll come up with a texel/pixel conversion thing for this that makes it more reliable 
for different uses.

*/
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;

void main()
{
    vec2 p = v_vTexcoord;
	// You might need to play around with the numbers to get your waves looking Just Right.
	// They might look insane and broken the first time you use it. Don't panic!
	// The comment below demonstrates the rough make up of the different sine waves being used
	// p.x + sin((p.y * wavelength) + phaseORspeed) * (amplitude)
	// Modify to taste and keep in mind the effect will change based on _Texture_ size.
    p.x = p.x + (0.5*((sin(p.y*100.0+(time*5.0))*(0.0015)) + sin(p.y*250.0-(time*4.0))*(0.0015)));
	p.y = p.y + (0.5*((sin(p.x*100.0+(time*5.0))*(0.002)) + sin(p.x*250.0-(time*4.0))*(0.002)));
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, p );  
}