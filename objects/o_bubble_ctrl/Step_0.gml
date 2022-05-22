if place_meeting(x,y,o_seiren) && mouse_check_button(mb_left){
	isClicked = true;
}

if isClicked{
	
	image_blend=c_white
	if alarm[0]<=0{
		alarm[0]=20;
		show_debug_message("Alarm setting?")
		isClicked=false;
	}
	
}
	
	
