/// @description Insert description here
// You can write your code in this editor
if (room == rm_start){
	if (keyboard_check_pressed(vk_space)){
		room_goto(rm_game);
	}
	else if (keyboard_check_pressed(vk_escape)){
		game_end();
	}
}

else if (room == rm_game){
	if (keyboard_check_pressed(vk_escape)){
		room_goto(rm_start);
		game_restart();
	}
	if (keyboard_check_pressed(vk_space)){
		global.counter = 30*3-1;
		global.state = -1;
		global.selectedX = -1;
		global.selectedY = -2;
		global.direcX = -1;
		global.direcY = -2;
	}
	if (global.counter > 0){
		global.counter -= 1;
	}
	else if (global.counter == 0){
		global.counter = 30*3-1;
		if (global.selectedX == 0 and global.selectedY == 1){
			global.state = 1;
		}
		else if (global.selectedX == 1 and global.selectedY == 2){
			global.state = 1;
		}
		else if (global.selectedX == 2 and global.selectedY == 0){
			global.state = 1;
		}
		else if (global.selectedX == 0 and global.selectedY == 2){
			global.state = 0;
		}
		else if (global.selectedX == 1 and global.selectedY == 0){
			global.state = 0;
		}
		else if (global.selectedX == 2 and global.selectedY == 1){
			global.state = 0;
		}
		else if (global.selectedX == global.selectedY){
			global.counter = 30*3-1;
		}
	}
	show_debug_message(string(global.selectedX) + string(global.selectedY) + string(global.state));
	show_debug_message(string(global.direcX) + string(global.direcY) + string(global.state));


	if (global.state != -1){
		if (global.direcX == global.direcY and global.state == 1){
			global.winner += 1;
			global.counter = 30*3-1;
			global.state = -1;
			global.selectedX = -1;
			global.selectedY = -2;
			global.direcX = -1;
			global.direcY = -2;
		}
		else if (global.direcX == global.direcY and global.state == 0){
			if (global.winner != 0){
				name = get_string("Please enter your name: ","");
				highscore_add(name, global.winner);
			}
			global.winner += 1;
			global.winner = 0;
			global.counter = 30*3-1;
			global.state = -1;
			global.selectedX = -1;
			global.selectedY = -2;
			global.direcX = -1;
			global.direcY = -2;
		}
		//else if (keyboard_check_pressed(vk_anykey) and global.direcX != global.direcY){
		//	global.counter = 30*4-1;
		//	global.state = -1;
		//	global.selectedX = -1;
		//	global.selectedY = -2;
		//	global.direcX = -1;
		//	global.direcY = -2;
		//}
	}
	if (keyboard_check_pressed(vk_enter)){
		room_goto(rm_end);
	}
}

else if (room == rm_end){
	if(keyboard_check_pressed(vk_escape)){
		room_goto(rm_start);
		game_restart();
	}
	if (keyboard_check_direct(ord("C"))){
		highscore_clear();
	}
}