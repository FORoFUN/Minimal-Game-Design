/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_left)){
	x -= 20;
}
if (keyboard_check(vk_right)){
	x += 20;
}
if (x > room_width){
	x = 0;
}
else if (x < 0){
	x = room_width;
}