if place_meeting(x,y,o_seiren){
	if mouse_check_button(mb_left){
		isClicked++;
	}
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
	
	alarm[1]=random_range(40,200)
	
}
	 