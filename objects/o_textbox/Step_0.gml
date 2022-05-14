if keyboard_check_pressed(vk_space){
	if o_girl.curr<o_girl.txtLast{
		o_girl.curr++
	}
	else {
		instance_destroy();
	}
}
