//following mouse 

x=mouse_x
y=mouse_y

//switch for emotions 
switch seirenState{
	
	case states.neutral:
	sprite_index= spr_seiren_neu;
	break;
	
	case states.happy:
	sprite_index=spr_seiren_happy;
	break;
	
}


/// sprite change depending on what situation
if mouse_check_button(mb_left){
	seirenState=states.happy;
}
else {
	seirenState = states.neutral;
}
