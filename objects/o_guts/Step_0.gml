if keyboard_check_pressed(vk_space){
	if !instance_exists(obj_textbox){
		instance_create_depth(x,y,-3000,obj_textbox)
		curr=0;
	}
}
