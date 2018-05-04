/// @description Insert description here
// You can write your code in this editor
if (room ==rm_game){
if(num_notes < max_notes){
	instance_create_depth(random_range(0,room_width/2),random_range(0,room_height/2),0,obj_enemy);
	instance_create_depth(random_range(room_width/2,room_width),random_range(room_height/2,room_height),0,obj_enemy);
	instance_create_depth(random_range(0,room_width/2),random_range(room_height/2,room_height),0,obj_enemy);
	instance_create_depth(random_range(room_width/2,room_width),random_range(room_height/2,room_height),0,obj_enemy);
	num_notes += 4;
}
}
alarm_set(0,15);
