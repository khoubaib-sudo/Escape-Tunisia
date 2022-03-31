/// @desc 
x = owner.x;
y= owner.y+10;

image_xscale = abs(owner.image_xscale);
image_yscale= abs(owner.image_yscale);

if(instance_exists(Oplayer))
{
	if(Oplayer.x < x) image_yscale = -image_yscale;
	if(point_distance(Oplayer.x,Oplayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,Oplayer.x,Oplayer.y);
		countdown--;
		if(countdown <= 0)
		{
			countdown = countdownrate;
			if(!collision_line(x,y,Oplayer.x,Oplayer.y,Owall,false,false))
			{
				
				audio_play_sound(snShot,5,false);
				audio_sound_pitch(snShot,choose(0.8,1.0,1,2));
				with (instance_create_layer(x,y,"bullets",Obossullet))
				{
					spd = 7;
					direction = other.image_angle;
					image_angle = direction ; 
				}
			}
		}
	}
}