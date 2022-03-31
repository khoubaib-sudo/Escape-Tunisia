
// update destination
if (instance_exists(Oplayer))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if((follow).object_index == Oplayerdead)
	{
		x = xTo;
		y = yTo;
	
	}
}
// update object position 
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half+buff, room_width - view_w_half);
y = clamp(x,view_h_half+buff, room_height - view_h_half);


//screen shake
x+= random_range(-shake_remain,shake_remain);
y+= random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));


// update camera view 
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
