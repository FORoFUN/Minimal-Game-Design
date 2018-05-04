/// @description Insert description here
// You can write your code in this editor

if (global.state == 1){
	draw_rectangle_color(room_width/2,0, room_width,room_height,c_blue,c_blue,c_blue,c_blue,false);
}

if (global.direcY == 0){
	draw_sprite(spr_left,0, room_width/4*3, room_height/2);
}
else if (global.direcY == 1){
	draw_sprite(spr_right,0, room_width/4*3, room_height/2);
}
else if (global.direcY == 2){
	draw_sprite(spr_up,0, room_width/4*3, room_height/2);
}
else if (global.direcY == 3){
	draw_sprite(spr_down,0, room_width/4*3, room_height/2);
}
