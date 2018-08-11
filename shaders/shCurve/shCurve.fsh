//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec2 ruv = v_vTexcoord;
    ruv -= 0.5;
    /*ruv*=screenSize;*/
    
	const float pi = 3.1415;
	float d = length(ruv.xy);
	const float max_radius = 0.70711;
	float modified = sin((d/max_radius/2.5)*pi)/1.55;
	ruv += ruv*(d-modified);
	//ruv*=(2.2-distort);
	ruv += 0.5;
	
	const float interlaceFrequency = 150.0;
	const float interlaceIntensity = 0.10;
	float interlace = 1.0 + clamp(sin(ruv.y*pi*interlaceFrequency)* interlaceIntensity, 0.0, 1.0);
	
	if (ruv.x < 0.0 || ruv.x > 1.0 || ruv.y < 0.0 || ruv.y > 1.0)
		discard;
		
	vec3 c = v_vColour.rgb * texture2D( gm_BaseTexture, ruv ).rgb * interlace;

	const float RADIUS = 0.75;
	const float SOFTNESS = 0.45;
	float vignette = smoothstep(RADIUS, RADIUS-SOFTNESS, d);
	c = mix (c, c * vignette, 0.5);

	
	gl_FragColor = vec4(c.r, c.g, c.b, 1.0);
}
