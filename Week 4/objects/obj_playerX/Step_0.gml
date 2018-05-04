/// @description Insert description here
// You can write your code in this editor
if (global.counter > 0 and global.counter <= 30){
	if (keyboard_check_pressed(ord("1"))){
		global.selectedX = 0;
	}
	else if (keyboard_check_pressed(ord("2"))){
		global.selectedX = 1;
	}	
	else if (keyboard_check_pressed(ord("3"))){
		global.selectedX = 2;
	}
}

if (global.state != -1 and global.counter > 0 and global.counter <= 30){
	if (keyboard_check_pressed(ord("A"))){
		global.direcX = 0;
	}
	else if (keyboard_check_pressed(ord("D"))){
		global.direcX  = 1;
	}	
	else if (keyboard_check_pressed(ord("W"))){
		global.direcX  = 2;
	}
	else if (keyboard_check_pressed(ord("S"))){
		global.direcX  = 3;
	}
}