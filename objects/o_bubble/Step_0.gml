if y<-32{
	with self{
		instance_destroy();
	}
	
	instance_create_depth(x,500,-6000,choose(o_bubble,o_bubble2))
	//show_debug_message("bubble destroyed")
}
