/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;

global.point += sys;
collide = instance_nearest(x,y,obj_enemy);
if (instance_exists(obj_enemy)){
	if (distance_to_point(collide.x,collide.y) < 48){
		sys = 0;
		instance_deactivate_object(obj_enemy);
		instance_deactivate_object(obj_player);
		room_goto(rm_end);
	}
}