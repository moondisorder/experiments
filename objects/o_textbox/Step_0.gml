if keyboard_check_pressed(vk_space){
show_debug_message("Does instance exist of textbox="+string(o_textbox))
		if o1.curr<o1.txtLast{
			o1.curr++
		}
		else {
			instance_destroy();
		}
	}
