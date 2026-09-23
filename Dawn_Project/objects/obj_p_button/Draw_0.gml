
if obj_manager.allow_input==true and inst_timer_for_end.y>=-20 and !instance_exists(obj_textbox)
{
	var sh_label = "[scale,0.2]"+label
	if obj_payer._talk_what=="first_fight_1" or obj_payer._talk_what=="first_fight_2" or obj_payer._talk_what=="first_fight_3" or obj_payer._talk_what=="first_fight_4"
	{
		if ((hot_button==ord("A") or hot_button==ord("C")) and obj_manager.turn_all>=0) or ((hot_button==ord("D") or hot_button==ord("C")) and obj_manager.turn_all>=1) or ((hot_button==ord("S") or hot_button==ord("C")) and obj_manager.turn_all>=2)
		{
	draw_self();
	scribble(sh_label).starting_format("Font_main",c_white).draw(x+(sprite_width/2)-(string_width_scribble(sh_label)/2),y+(sprite_height/2));
		if global.dev=1
	{
		switch(hot_button_gmpd)
		{
			case gp_face1:
			draw_sprite(spr_buttons_gp,0,x,y+40)
			break;
			case gp_face2:
			if hot_button == ord("C") draw_sprite(spr_buttons_gp,4,x,y-40)
			else draw_sprite(spr_buttons_gp,3,x+40,y)
			break;
			case gp_face3:
			draw_sprite(spr_buttons_gp,1,x-40,y)
			break;
			case gp_face4:
			draw_sprite(spr_buttons_gp,2,x,y-40)
			break;
		}
	}
		}
	}
	else
	{
	draw_self();
	scribble(sh_label).starting_format("Font_main",c_white).draw(x+(sprite_width/2)-(string_width_scribble(sh_label)/2),y+(sprite_height/2));
	/*
	if (hot_button=ord("Z")) scribble("[scale,0.2]Z").starting_format("Font_main",c_yellow).draw(x+(sprite_width/2)-(string_width_scribble("[scale,0.2]Z")/2),y+(sprite_height/2)-string_height_scribble("[scale,0.2]Z"));
	if (hot_button=ord("X")) scribble("[scale,0.2]X").starting_format("Font_main",c_yellow).draw(x+(sprite_width/2)-(string_width_scribble("[scale,0.2]X")/2),y+(sprite_height/2)-string_height_scribble("[scale,0.2]X"));
	*///scribble(string_width("[c_yellow][c_white]")*0.2).starting_format("Font_main",c_white).scale(0.2).draw(x,y);	
		if global.dev=1
	{
		switch(hot_button_gmpd)
		{
			case gp_face1:
			draw_sprite(spr_buttons_gp,0,x,y+40)
			break;
			case gp_face2:
			if hot_button == ord("C") draw_sprite(spr_buttons_gp,4,x,y-40)
			else draw_sprite(spr_buttons_gp,3,x+40,y)
			break;
			case gp_face3:
			draw_sprite(spr_buttons_gp,1,x-40,y)
			break;
			case gp_face4:
			draw_sprite(spr_buttons_gp,2,x,y-40)
			break;
		}
	}
	}
}

	if hot_button = ord("1") or hot_button = ord("2") or hot_button = ord("3") or hot_button = ord("4") or hot_button = ord("5") or hot_button = ord("6") or hot_button = ord("7") or hot_button = ord("8") 
	{
		scribble(hot_button-48).starting_format("Font_main",c_white).scale(0.16).draw(x+57,y+1)
	}
	for (var g = 0; g<gamepad_get_device_count(); g++)
	{
	if ((keyboard_check(hot_button) or gamepad_button_check(g,hot_button_gmpd) or position_meeting(mouse_x,mouse_y,id)))
	{
		if ((ds_list_size(global.btn_txt)<1) or (layer_get_visible(obj_manager.skill_ui) and ds_list_size(global.btn_txt)<=1) or (layer_get_visible(obj_manager.target_ui) and ds_list_size(global.btn_txt)<=1) or (layer_get_visible(obj_manager.target_ui) and !layer_get_visible(obj_manager.skill_ui) and global.skill_targeting==true and ds_list_size(global.btn_txt)<=2))
		{
		if ds_list_find_index(global.btn_txt,id) = -1
		{
		ds_list_add(global.btn_txt,id)	
		}
		}
	}
	else
	{
		if ds_list_find_index(global.btn_txt,id) != -1
		{
		ds_list_clear(global.btn_txt)
		}
	}
	
	}
	if layer_get_visible(obj_manager.skill_ui) and ds_list_find_index(global.btn_txt,inst_717ADA08) == -1
	{
	ds_list_add(global.btn_txt,inst_717ADA08)	
	}
	if (ds_list_size(global.btn_txt)>1 or ds_list_find_index(global.btn_txt,inst_622620E9) != -1)and layer_get_visible(obj_manager.base_ui)
	{
		ds_list_clear(global.btn_txt)
	}
	if ds_list_find_index(global.btn_txt,id) != -1 and obj_manager.allow_input and !instance_exists(obj_textbox) and btn_state==button_state.active
	{
		if (obj_inventory.inv_active==false) scribble(Hover_func).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(240,40);
		else scribble(Hover_func).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(240,80);
	}
	if !(((keyboard_check(ord("A")) or keyboard_check(ord("S"))  or keyboard_check(ord("D")) or keyboard_check(ord("W")) or keyboard_check(ord("Z")) or keyboard_check(ord("X"))) and layer_get_visible(obj_manager.base_ui)) or (layer_get_visible(obj_manager.skill_ui) and (keyboard_check(ord("1")) or keyboard_check(ord("2")) or keyboard_check(ord("3")) or keyboard_check(ord("4")) or keyboard_check(ord("5")) or keyboard_check(ord("6")) or keyboard_check(ord("7")) or keyboard_check(ord("8")))) or (keyboard_check(ord("C")) and layer_get_visible(obj_manager.target_ui) )or  position_meeting(mouse_x,mouse_y,obj_button)) and global.selected_unit.current[@HP]>0 and global.targeting==false and global.skill_targeting==false and obj_inventory.inv_active==false and global.selected_unit.is_ai==false and !instance_exists(obj_textbox)
	{
		scribble("Сейчас ходит: "+string(global.selected_unit.unit_name)).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(240,40);
	}
	/*
	for (var i = 0; i < ds_list_size(global.btn_txt); i++)
	{
	scribble(global.btn_txt[|i]).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(0,10*i);
	}
	*/
if (Main_func != noone and (keyboard_check(hot_button) or keyboard_check_released(hot_button) or position_meeting(mouse_x,mouse_y,id))  ) 
	{
if global.selected_unit!=-1
{
	for (var i =0; i<array_length(global.selected_unit.learned_skill); i++)
	{
		if global.selected_unit.learned_skill[i] != -1
		{
		var _cost = global.selected_unit.learned_skill[i].cost
		var _sp = global.selected_unit.current[@ SP];
		if (_sp < _cost) and string(hot_button-48)==string(i+1)
		{
		scribble("Нехватает SP").starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(240,80);	
		}
		}
	
	}
}
	}