/// @description Insert description here
// collect coin 
if(place_meeting(x,y,Oplayer) && !collected){
	audio_play_sound(choose(sncoin1,sncoin2,sncoin3,sncoin4,sncoin5,sncoin6,sncoin7,sncoin8),3,false);
	Oplayer.coins++;
	image_index = 0;
	collected = true;

}

//collected

if(collected){
	sprite_index = scoineffect;
	if(floor(image_index) >= image_number - 1){
		instance_destroy();
	}
}

