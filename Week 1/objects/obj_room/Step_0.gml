/// @description Insert description here
// You can write your code in this editor

if (room = rm_start){
	if(keyboard_check_pressed(vk_space)){
		room_goto(rm_game_lv1);
	}
	else if (keyboard_check_pressed(vk_escape)){
		game_end();
	}
}

else if (room = rm_game_lv1 or room = rm_game_lv2 or room = rm_game_lv3){
	if(keyboard_check_pressed(vk_escape)){
		room_goto(rm_start);
		game_restart();
	}
}

else if (room = rm_ending){
	if (keyboard_check_pressed(vk_escape)){
		game_end();
	}
	else if (keyboard_check_direct(vk_space)){
		room_goto(rm_start);
		game_restart();
	}
}