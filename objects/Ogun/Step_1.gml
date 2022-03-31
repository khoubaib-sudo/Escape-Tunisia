x = Oplayer.x + 20;
y= Oplayer.y -25;

image_angle =  point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay -1;

if (mouse_check_button(mb_left)) && (firingdelay < 0)
{
	firingdelay =5;
	screenshake(2,10);
	audio_play_sound(snShot,5,false);
	audio_sound_pitch(snShot,choose(0.8,1.0,1,2));
	with (instance_create_layer(x,y,"bullets",Obullet))
	{
		spd = 25;
		direction = other.image_angle;
		image_angle = direction ; 
	}
}