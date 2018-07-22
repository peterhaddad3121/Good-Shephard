//After having drawn our tile layer to a surface, lets ram it through some shaders!
if (event_type == ev_draw)
{
	if (event_number == 0)
	{
		var t = get_timer();
		surface_reset_target();
		
		//Make a new temporary surface
		var tempsurf = surface_create(room_width,room_height);
		surface_set_target(tempsurf);
		draw_clear_alpha(c_white,0);

		//Draw our outer coastline to it.
		var ws = 6;//size of the outer coast line
		shader_set(shColourLightBlue);
		draw_surface(global.wavesurf,ws,ws);
		draw_surface(global.wavesurf,-ws,-ws);
		draw_surface(global.wavesurf,-ws,ws);
		draw_surface(global.wavesurf,ws,-ws);
		shader_reset();
		
		//Then draw our inner coastline on top
		var ws = 2;//size of the inner coast line
		shader_set(shColourWhite);
		draw_surface(global.wavesurf,ws,ws);
		draw_surface(global.wavesurf,-ws,-ws);
		draw_surface(global.wavesurf,-ws,ws);
		draw_surface(global.wavesurf,ws,-ws);
		shader_reset();
		
		surface_reset_target();
		
		
		//then put this temporary surface through our wavey shader to make it wavey and draw it!
		var shader_params = shader_get_uniform(shWave, "time");
		shader_set(shWave);
		shader_set_uniform_f(shader_params, get_timer()*0.00000035);
		draw_surface(tempsurf,0,0);
		shader_reset();
		surface_free(tempsurf);
		draw_surface(global.wavesurf,0,0);
		
		t = get_timer()-t;
		//show_debug_message("Wave Layer End script took: " + string(t) + " microseconds");
		//uncomment the above line to see how much time these waves take to process each step.
	}
}