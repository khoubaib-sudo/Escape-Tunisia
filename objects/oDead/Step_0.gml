

if (done==0)
{

	vsp = vsp + grv; 

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
		if (vsp > 0)
			{
			done =1;
			image_index=1;
			}
		while(!place_meeting(x,y+sign(vsp),Owall))
		{
			y=y+sign(vsp);
		}
		vsp=0;
	}
	y = y + vsp;
}