/// @description Insert description here
// You can write your code in this editor
hsp =0;
vsp=0;
grv=0.2;
done = 0;
screenshake(6,60);
image_speed =0;
image_index = 0;
audio_play_sound(snDeath,10,false);

game_set_speed(30,gamespeed_fps);

with (Ocamera) follow = other.id;