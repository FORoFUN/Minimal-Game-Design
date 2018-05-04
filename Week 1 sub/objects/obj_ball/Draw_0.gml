/// @descripti            on Insert description here
// You can write your code in this editor

draw_circle_color(x,y,32,c_white,c_yellow,false);

if (y > room_height){
	draw_text(room_width/3,room_height/3,"Top Player won \n Press Space to Play Again!");
	if (keyboard_check_pressed(vk_space)){
		game_restart();
	}
}
else if (y < 0){
	draw_text(room_width/3,room_height/3,"Bottom Player won \n Press Space to Play Again!");
	  if (keyboard_check_pressed(vk_space)){
		game_restart();
	}
}