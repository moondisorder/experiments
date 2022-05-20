if keyboard_check_pressed(vk_enter){
	room_restart();
}

if keyboard_check_pressed(ord("L")){
	
}

if global.Tries>maxTries{
	global.gameOver=true;
	//global.Shells=0
	global.Score=0
	show_debug_message("game over")
}





//if !instance_exists(o_bubble){
	
	
//}
