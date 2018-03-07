/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)){
	start_x = mouse_x;
	start_y = mouse_y;
	clicks -= 1;
}

movement = point_distance(x,y,start_x,start_y);
angle = point_direction(x,y,start_x,start_y);
radi = angle * pi/180;
if (movement > 40){
	movement = 40;
}

move_x = movement * cos(radi) * speet;
move_y = -movement * sin(radi) * speet;

move_x = move_x * fric;
move_y = move_y * fric;


obj_dest = instance_nearest(x + move_x ,y + move_y,obj_goal);
if (distance_to_point(obj_dest.x, obj_dest.y) < 48){
	room_goto_next();
	clicks = 2;
}
obj_coll_x = instance_nearest(x + move_x ,y,obj_walls)
if (distance_to_point(obj_coll_x.x,obj_coll_x.y) < 64){ 
	x -= 32;
	move_x = 0;
	start_x = x;
	move_y = 0;
	start_y = y;
}
obj_coll_y = instance_nearest(x ,y + move_y,obj_walls)
if (distance_to_point(obj_coll_y.x,obj_coll_y.y) < 64){
	y -= 32;
	move_y = 0;
	start_y = y;
	move_x = 0;
	start_x = x;
}

if (move_x == 0 and move_y == 0 and clicks == 0){
	room_goto(rm_ending);
}

x += move_x;
y += move_y;


	





