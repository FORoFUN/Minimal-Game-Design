/// @description Insert description here
// You can write your code in this editor

if (global.state == 0){
	draw_rectangle_color(0,0, room_width/2,room_height,c_red,c_red,c_red,c_red,false);
}

if (global.direcX == 0){
	draw_sprite(spr_left,0, room_width/4, room_height/2);
}
else if (global.direcX == 1){
	draw_sprite(spr_right,0, room_width/4, room_height/2);
}
else if (global.direcX == 2){
	draw_sprite(spr_up,0, room_width/4, room_height/2);
}
else if (global.direcX == 3){
	draw_sprite(spr_down,0, room_width/4, room_height/2);
}
