/// @description Insert description here
// You can write your code in this editor

if (global.counter > 0 and global.counter <= 30){
	if (keyboard_check_pressed(188)){
		global.selectedY = 0;
	}
	else if (keyboard_check_pressed(190)){
		global.selectedY = 1;
	}	
	else if (keyboard_check_pressed(191)){
		global.selectedY = 2;
	}
}

if (global.state != -1 and global.counter > 0 and global.counter <= 30){
	if (keyboard_check_pressed(vk_left)){
		global.direcY = 0;
	}
	else if (keyboard_check_pressed(vk_right)){
		global.direcY  = 1;
	}	
	else if (keyboard_check_pressed(vk_up)){
		global.direcY  = 2;
	}
	else if (keyboard_check_pressed(vk_down)){
		global.direcY  = 3;
	}
}