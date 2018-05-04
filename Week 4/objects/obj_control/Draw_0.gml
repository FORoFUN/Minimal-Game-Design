/// @description Insert description here
// You can write your code in this editor
if (room == rm_start){
	draw_text(room_width/3, room_height/4, "Rock, Paper, Scissor.... \n1 = Rock 2 = Paper 3 = Scissor \n, = Rock . = Paper / = Scissor \nUse WASD and ArrowKeys for Directions")
	draw_text(room_width/3, room_height/4*2, "SPACE to start \n \n \nHEY OVER THERE! -> ")
}

if (room == rm_game){
	for (i = 0; i < global.winner; i++){
		line = i div 6;
		place = i mod 6;
		draw_sprite(spr_star,0, room_width/2 + 75 + 75*place, 50 + 75 * line);
	}
	if (global.counter div 30 > 1){
		draw_set_color(c_red);
	}
	else if (global.counter div 30 <= 1){
		draw_set_color(c_green);
	}
	if (global.counter > 30){
		draw_text_transformed(room_width/4*3, room_height/3, string(global.counter div 30),5,5,0);
		draw_text_transformed(room_width/4, room_height/3, string(global.counter div 30),5,5,0);
	}
}

if (room == rm_end){
	draw_set_color(c_white);
	draw_highscore(room_width/4,50,room_width/4*3,600);
	draw_text(room_width/3,room_height/2+225,"Press ESC to exit!")
}