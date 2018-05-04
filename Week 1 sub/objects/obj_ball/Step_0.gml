/// @description Insert description here
// You can write your code in this editor



if (y > obj_btm.y -42){
	if (x > obj_btm.x - 50 and x < obj_btm.x){
		x_move = -x_move;
		y_move = -y_move;
	}
	else if ( x < obj_btm.x + 50 and x > obj_btm.x){
		y_move = -y_move;
	}	
}

if (y < obj_top.y + 42){
	if (x > obj_top.x - 50 and x < obj_top.x){
		y_move = -y_move;
		x_move = -x_move;
	}
	else if (x < obj_top.x + 50 and x > obj_top.x){
		y_move = -y_move;
	}
}

if (x > room_width){
	x = 0;
}
else if (x < 0){
	x = room_width;
}

x += x_move;
y += y_move;                          