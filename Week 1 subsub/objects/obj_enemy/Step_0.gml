/// @description Insert description here
// You can write your code in this editor

move = random_range(5,7);

if (instance_exists(obj_player)){
if (x > obj_player.x){
	x -= move;
}
if (x < obj_player.x){
	x += move;
}
if (y > obj_player.y){
	y -= move;
}
if (y < obj_player.y){
	y += move;
}
}