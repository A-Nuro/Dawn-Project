draw_sprite(spgd_,3,x,y)
draw_sprite(spgd_s,3,x+64,y)
draw_sprite(spgd_s_1,3,x+128,y)

pointer = clamp(pointer,0,2)

pointer-=keyboard_check_pressed(vk_left)
pointer+=keyboard_check_pressed(vk_right)

draw_sprite_stretched(point,0,x+pointer*64,y,64,64)