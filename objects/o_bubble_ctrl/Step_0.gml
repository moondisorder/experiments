if place_meeting(x,y,o_seiren){
	if mouse_check_button(mb_left){
		isClicked++;
		isDragged=true
	}
}

if isDragged{
	
	x=mouse_x
	y=mouse_y
	
}

if mouse_check_button_released(mb_left){
	isDragged=false;
}
if isClicked>=1{
	image_xscale=1.1
	image_yscale=1.1
		if isClicked>=2{
		image_xscale=1.3
		image_yscale=1.3
		
			if isClicked>=3{
			image_xscale=1.5
			image_yscale=1.5
			if alarm[0]<=0{
				alarm[0]=20;
				show_debug_message("Alarm setting?")
			}
		}
	}
}
	
if alarm[1] <= 0 {
	
	alarm[1]=random_range(150,200)
	
}
	
// bubble popping after certain animation ///
if sprite_index = spr_bubble1_pop{
	if image_index >= image_number-1{
		show_debug_message("bubble pop?")
		instance_destroy();
	}
}
