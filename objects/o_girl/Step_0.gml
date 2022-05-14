//var hor= (keyboard_check(vk_right)-keyboard_check(vk_left))

//var ver = (keyboard_check(vk_down)-keyboard_check(vk_up))


if keyboard_check(vk_left){
sprite_index=spr_girl_left
x-=dist
}

if keyboard_check(vk_right){
sprite_index=spr_girl_right
x+=dist
}

if keyboard_check(vk_up){
sprite_index=spr_girl_up
y-=dist
}

if keyboard_check(vk_down){
sprite_index=spr_girl_down
y+=dist
}


show_debug_message("Does instance exist of textbox="+string(o_textbox))
