/// @desc
if (hascontrol)
{
	key_left = keyboard_check(ord("Q")); 
	key_right = keyboard_check(ord("D")); 
	key_jump =keyboard_check(ord("Z"));
}
else
{
	key_right=0;
	key_jump=0;
	key_left=0;
}
var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv; 


canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -7;
	canjump = 0;
}


//HC
if(place_meeting(x+hsp,y,Owall))
{
	while(!place_meeting(x+sign(hsp),y,Owall))
	{
		x=x+sign(hsp);
	}
	hsp=0;
}
x = x + hsp;
//HV
if(place_meeting(x,y+vsp,Owall))
{
	while(!place_meeting(x,y+sign(vsp),Owall))
	{
		y=y+sign(vsp);
	}
	vsp=0;
}
y = y + vsp;

if (!place_meeting(x,y+1,Owall))
{
	sprite_index = playerJ;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1 ; else image_index = 0;
}
else 
{
	canjump=10;
	if(sprite_index == playerJ) 
	{
		audio_play_sound(snLanding,3,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"bullets",Odust))
			{
				vsp = 0;
			}
			
		}
	
	}
	image_speed=1;
	if (hsp ==0)
	{
		sprite_index= player;
	}
	else
	{
		sprite_index = Wplayer;
		repeat(0)
		{
			with (instance_create_layer(x,bbox_bottom,"bullets",Odust))
			{
				hsp = 0;
			}
			
		}
	}
}
if (hsp != 0) image_xscale = sign(hsp);
