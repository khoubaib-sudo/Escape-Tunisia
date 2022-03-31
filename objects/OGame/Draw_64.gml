
if(room != Rmenu) && (instance_exists(Oplayer)) && (global.kills > 0) 
{
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black, fMenu, fa_right, fa_top);
	draw_text_transformed(RES_W-350,50,string(global.kills) + " Pointless Murders ", killtextscale, killtextscale,0);
	
}