if keyboard_check_pressed(vk_space){
	room_restart();
}

if keyboard_check_pressed(ord("L")){
	
}

if global.Tries>maxTries{
	gameOver=true;
	show_debug_message("game over")
}

