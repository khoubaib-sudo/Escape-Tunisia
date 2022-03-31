var draw_x = 8
var draw_y = 8


/// draw coin Gui 
draw_set_font(coin_gui);
var _w = display_get_gui_width();
/// draw coin sprite
draw_sprite(scoins, 0, _w - draw_x - 10 , draw_y + 7);
/// draw color 
draw_set_color(make_color_rgb(255,255,0));
/// draw coin text 
draw_set_halign(fa_right);
draw_text(_w - draw_x*6, draw_y+20, coins);
draw_set_halign(fa_left);

draw_set_color(c_white);