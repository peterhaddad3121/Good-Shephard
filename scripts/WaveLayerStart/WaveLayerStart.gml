//Instead of drawing our tile layer as standard, draw it to a surface!
if (event_type == ev_draw)
{
	if (event_number == 0)
	{
		if (!surface_exists(global.wavesurf)) global.wavesurf = surface_create(room_width,room_height);
		surface_set_target(global.wavesurf);
		draw_clear_alpha(c_white,0);
	}
}
