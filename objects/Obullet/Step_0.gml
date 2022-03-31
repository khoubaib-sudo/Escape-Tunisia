x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);



if (place_meeting(x,y,Oshootable))
{
	with (instance_place(x,y,Oshootable))
	{		
		hp--;
		flash=3;
		hitfrom=other.direction;
	}
	instance_destroy();
}


if (place_meeting(x,y,Owall)) && (image_index !=0) 
{
	while(place_meeting(x,y,Owall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);	
	}
	spd = 0;
	instance_change(Ohitspark,true);
}

