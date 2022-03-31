
vsp = vsp + grv; 
//Don't walk off edges 

if(grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,Owall))
{
	hsp = -hsp;
}

//HC
if(place_meeting(x+hsp,y,Owall))
{
	while(!place_meeting(x+sign(hsp),y,Owall))
	{
		x=x+sign(hsp);
	}
	hsp=-hsp;
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
	grounded = false;
	sprite_index = Sboss;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1 ; else image_index = 0;
}
else 
{
	grounded = true;
	image_speed=1;
	if (hsp ==0)
	{
		sprite_index= Sboss;
	}
	else
	{
		sprite_index = Sboss;
	}
}
if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;