image_speed=0

if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left) image_index=2
	else image_index=1
	
	if mouse_check_button_released(mb_left)
	{
		script_execute(func)
		active = false
	}
}
else
{
	image_index=0	
}

if active==true
{
 draw_sprite_stretched(black_no,20,0,0,room_width,room_height)	
}

draw_self()