if (mouse_check_button(mb_left) && (alarm[0] < 0))
    {
    instance_create_layer(mouse_x, mouse_y, layer, choose(obj_block, obj_circle, obj_triangle));
    alarm[0] = 5;
    }
