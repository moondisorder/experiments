/*if alarm[0]<0{
	alarm[0]=20;
}
if fadeOut{
	image_alpha -= 0.01;
}
show_debug_message(alarm[0])
/*
if image_alpha>0{
	fadeOut=true;
}
*/

if y<-32{
	instance_destroy();
	//show_debug_message("bubble destroyed")
}
