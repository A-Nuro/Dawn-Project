if instance_exists(obj_b_anna_tapes) and hot_button = ord("W")
	{
	//btn_state = button_state.inactive;
	}
if obj_payer._talk_what=="first_fight_1" or obj_payer._talk_what=="first_fight_2" or obj_payer._talk_what=="first_fight_3" or obj_payer._talk_what=="first_fight_4"
	{
if (hot_button==ord("A") and obj_manager.turn_all!=0 and obj_manager.turn_all<3) or (hot_button==ord("D") and obj_manager.turn_all!=1 and obj_manager.turn_all<3) or (hot_button==ord("S") and obj_manager.turn_all!=2 and obj_manager.turn_all<3) or hot_button==ord("W")
{
btn_state = button_state.inactive;
}
else
{
btn_state = button_state.active;
}

	}
/*
if global.selected_unit!=-1
{
if global.selected_unit.learned_skill[@ ds_list_find_index(global.skills_buttons, id)] != -1
{
if global.selected_unit.current[@ SP] < global.selected_unit.learned_skill[@ ds_list_find_index(global.skills_buttons, id)].cost
{
	btn_state = button_state.inactive;
}
}
	}
	*/
	
if instance_exists(obj_textbox)
{
inst_timer_for_end.phy_position_y=-70	
}
else
{
if inst_timer_for_end.y<-20
	{
	inst_timer_for_end.phy_position_y+=0.4
	}
	else
	{
if (btn_state == button_state.active)
{

	if keyboard_check_pressed(hot_button) or gamepad_button_check_pressed(obj_payer.Gp_that_con,hot_button_gmpd) or (position_meeting(mouse_x,mouse_y,id) and mouse_check_button_released(mb_left))
	{
	can_be_used=1;	
	}
	
	if (Main_func != noone and (keyboard_check(hot_button) or gamepad_button_check(obj_payer.Gp_that_con,hot_button_gmpd) or gamepad_button_check_released(obj_payer.Gp_that_con,hot_button_gmpd) or keyboard_check_released(hot_button) or position_meeting(mouse_x,mouse_y,id))) 
	{
		if (obj_manager.allow_input)
		{
		image_index = 1;
		}
		scribble(Hover_func).starting_format("Font_main",c_white).scale(0.16).draw(40,40);
		
		
		if mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id)
		{
		image_index = 2;
		if global.selected_unit!=noone
		{
		if (hot_button=ord("Z") and !keyboard_check_released(ord("Z"))) global.selected_unit.q_imit=true;
		if (hot_button=ord("X") and !keyboard_check_released(ord("X"))) global.selected_unit.e_imit=true;
		}
		}
		
		if obj_manager.allow_input and (keyboard_check_released(hot_button) or gamepad_button_check_released(obj_payer.Gp_that_con,hot_button_gmpd) or (mouse_check_button_released(mb_left) and position_meeting(mouse_x,mouse_y,id))) and can_be_used==1
		{
		script_execute(Main_func);
		
		}
		
	}
	else image_index = 0;
		
	
}
else image_index = 2;
	}
	
}
