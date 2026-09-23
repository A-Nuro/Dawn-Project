if keyboard_check_released(vk_control)
{
var unit_add = instance_create_depth(288-96*2,288-32*2,5,obj_b_fear);
ds_list_add(global.units, unit_add);
ds_list_add(global.bad_team, unit_add)
}

switch(combat_phase)
{
	case phase.init:

if gamepad_is_connected(gpl()) gamepad_set_vibration(gpl(),0,0)

	
	instance_destroy(obj_textbox)
	turn_all=0;
	layer_set_visible(target_ui,false);
	instance_deactivate_layer(target_ui);
	layer_set_visible(base_ui,false);
	layer_set_visible(skill_ui,false);
	instance_deactivate_layer(skill_ui);
	
		
			//var spawner = instance_find(obj_spawn, i);
			for (var j = 0; j < array_length(global.team); j++)
			{
			var unit_g = instance_create_depth(288-96*j,288-32*j,5,global.team[j]);
			ds_list_add(global.units, unit_g);
			ds_list_add(global.good_team, unit_g);
			}
			
			for (var j = 0; j < array_length(global.evil_team); j++)
			{
			var unit_b = instance_create_depth(384+96*j,288-32*j,5,global.evil_team[j]);
			ds_list_add(global.units, unit_b);
			ds_list_add(global.bad_team, unit_b);
			}
			
			for (var j = 0; j<ds_list_size(global.good_team);j++)
			{
			if obj_payer._hp[j]!=-1
			{
				global.good_team[|j].current[@HP]=obj_payer._hp[j]
			}
			if obj_payer._sp[j]!=-1
			{
				global.good_team[|j].current[@SP]=obj_payer._sp[j]
			}
			
			}
		
		ds_list_copy(global.alive_units,global.units);
		combat_phase=phase.start_turn
	break;
	
	case phase.start_turn:
		
		for (var i = 0; i < ds_list_size(global.units); i++)
		{ 
			if global.units[|i].current[@HP] > 0 and ds_list_find_index(global.alive_units,global.units[|i]) == -1
			{
			ds_list_add(global.alive_units,global.units[|i])	
			}
		}
		
		for (var i = 0; i < ds_list_size(global.alive_units); i++)
		{ 
			if global.alive_units[|i].current[@HP] <= 0
			{
			ds_list_delete(global.alive_units,ds_list_find_index(global.alive_units,global.alive_units[|i]))	
			}
		}
		
		bubble_sort(global.alive_units);
		
		if units__finished >= ds_list_size(global.alive_units)
		{
			for (var i = 0; i < ds_list_size(global.alive_units); i++)
			{ with(global.alive_units[|i])
				turn_finished = false;
			}
			units__finished = 0;
		}
		
		for (var i = 0; i < ds_list_size(global.alive_units); i++)
		{	
			var inst = global.alive_units[|i];
			if (inst.turn_finished==false)
			{
				with(inst)
				{
				event_user(0);	
				}
				inst.selected = true;
				global.selected_unit = inst;
				break;
			}
			
			
		}
		if (!allow_input) and global.selected_unit.is_ai==false
		{
		allow_input = true;
		if global.selected_unit.current[@ HP] > 0 and ds_list_find_index(global.good_team,global.selected_unit)!=-1
		{
		event_user(1);
		}
		}
		if obj_payer._will_talk==true and ds_list_find_index(global.good_team,global.selected_unit)!=-1 and turn_all=obj_payer._talk_turn and !instance_exists(obj_textbox) and global.selected_unit.is_ai == false
		{
		create_textbox(obj_payer._talk_what);
		}			
		combat_phase=phase.wait;
	break;
	
	case phase.wait:
	cool_chels = 0;
	
			
	
	for (var i = 0; i < ds_list_size(global.alive_units); i++)
			{ 
			if global.alive_units[|i].current[@HP] <= 0
			{
			ds_list_delete(global.alive_units,ds_list_find_index(global.alive_units,global.alive_units[|i]))	
			}
			}
	with(global.selected_unit)
	{
	for (var i =0; i<array_length(effects); i++)
	{
	if effects[i].active == true script_execute(effects[i].act)
	}
	}
			
		if (global.selected_unit.current[@ HP] > 0  and !layer_get_visible(base_ui) and !layer_get_visible(target_ui) and global.selected_unit.turn_finished == false) and global.selected_unit.is_ai == false
		{
		event_user(1);
		}
		
		if global.selected_unit.is_ai=true
		{
			allow_input = false;
			with(global.selected_unit)
			{
			ai_doings()	
			}
		}
		var trig = true;
		with (obj_unit) 
		{
			if (d_cur_pos) 
			{
				trig = false;
				break;
			}
		}
		if (trig == true) moving=false;
		else moving=true;
		if (global.selected_unit.turn_finished == true or global.selected_unit.current[@HP] <=0) and (global.selected_unit.state==IDLE or global.selected_unit.state==IDLE1 or global.selected_unit.state==DEATH or global.selected_unit.state==BLOCK  or global.selected_unit.state == NO_THING)
		{	
			with(global.selected_unit)
			{
				for (var i =0; i<array_length(effects); i++)
				{
				if effects[i].active == true and effects[i].turns_remind<effects[i].turns
				{
				effects[i].turns_remind+=1;
				}
				else
				{
				effects[i].active = false 
				effects[i].turns_remind=0	
				}
				}
			}
			global.selected_unit.selected=false;
			units__finished++;
			layer_set_visible(target_ui, false);
			instance_deactivate_layer(target_ui);
			layer_set_visible(base_ui, false);
			instance_deactivate_layer(base_ui);
			for (var i = 0; i < ds_list_size(global.alive_units); i++)
			{ 
			if global.alive_units[|i].current[@HP] <= 0
			{
			ds_list_delete(global.alive_units,ds_list_find_index(global.alive_units,global.alive_units[|i]))	
			}
			}
			global.selected_unit.what_to_do=-1;

			
			combat_phase=phase.process;
			
		}
	
		

	break;
	
	case phase.process:	
	
	for (var i = 0; i < ds_list_size(global.alive_units); i++)
			{ 
			if global.alive_units[|i].current[@HP] <= 0
			{
			if !instance_exists(obj_textbox) and global.alive_units[|i].talk_when_die!=""
			{
			create_textbox(global.alive_units[|i].talk_when_die);
			}	
			ds_list_delete(global.alive_units,ds_list_find_index(global.alive_units,global.alive_units[|i]))	
			}
			}
	for (var i = 0; i < ds_list_size(global.alive_units); i++)
			{ 
			if global.alive_units[|i].current[@HP] <= global.alive_units[|i].talk_when_hp_at and global.alive_units[|i].talk_when_hp_at!=0
			{
			if !instance_exists(obj_textbox) and global.alive_units[|i].talk_when_hp!=""
			{
			create_textbox(global.alive_units[|i].talk_when_hp);
			global.alive_units[|i].talk_when_hp_at=0
			}	
			
			}
			}	
			

	
	while cool_chels < ds_list_size(global.units)
	{
		for (var i = 0; i < ds_list_size(global.units); i++)
		{ 
			if global.units[|i].state = IDLE or global.units[|i].state = DEATH or global.units[|i].state = BLOCK
			{
				cool_chels ++
				
			}
		}
	}
	if cool_chels != ds_list_size(global.units)
		{
		cool_chels = 0;
		}
	if ((!instance_exists(obj_effects) or obj_effects.sprite_index=no_no) and cool_chels = ds_list_size(global.units))
		{
			global.targeting = false;
			global.selected_unit.selected_skill = -1
			for (var i = 0; i < ds_list_size(global.units); i++)
			{
				with (global.units[|i])
				{
				draw_target = false;	
				}
			}
	
			combat_phase=phase.check_finish;
		}
	break;
	
	case phase.check_finish:
	
	if instance_exists(obj_battle_splash) instance_destroy(obj_battle_splash)
	
		process_finished=false;
		if !instance_exists(obj_textbox)
		{
		if ds_list_size(global.good_team)==1
		{
		if global.good_team[|0].current[@HP]!=0 combat_phase=phase.end_turn;
		}
		if ds_list_size(global.good_team)==2
		{
		if global.good_team[|0].current[@HP]!=0 or global.good_team[|1].current[@HP]!=0 combat_phase=phase.end_turn;
		}
		if ds_list_size(global.good_team)==3
		{
		if global.good_team[|0].current[@HP]!=0 or global.good_team[|1].current[@HP]!=0 or global.good_team[|2].current[@HP]!=0 combat_phase=phase.end_turn;
		}
		
		if ds_list_size(global.bad_team)==1
		{
		if global.bad_team[|0].current[@HP]==0 combat_phase=phase.win;
		}
		if ds_list_size(global.bad_team)==2
		{
		if global.bad_team[|0].current[@HP]==0 and global.bad_team[|1].current[@HP]==0 combat_phase=phase.win;
		}
		if ds_list_size(global.bad_team)==3
		{
		if global.bad_team[|0].current[@HP]==0 and global.bad_team[|1].current[@HP]==0 and global.bad_team[|2].current[@HP]==0 combat_phase=phase.win;
		}
		
		if ds_list_size(global.good_team)==1
		{
		if global.good_team[|0].current[@HP]==0 combat_phase=phase.lose;
		}
		if ds_list_size(global.good_team)==2
		{
		if global.good_team[|0].current[@HP]==0 and global.good_team[|1].current[@HP]==0 combat_phase=phase.lose;
		}
		if ds_list_size(global.good_team)==3
		{
		if global.good_team[|0].current[@HP]==0 and global.good_team[|1].current[@HP]==0 and global.good_team[|2].current[@HP]==0 combat_phase=phase.lose;
		}
		}
	break;
	
	case phase.end_turn:
	with (obj_unit)
	{
		draw_anim = true;
	}
	if units__finished>=ds_list_size(global.alive_units) turn_all+=1
		global.skill_targeting = false

		selected_finished = false;
	
		ds_list_clear(global.selected_targets);
		ds_list_clear(global.targets);
		
	for (var i = 0; i < ds_list_size(global.units); i ++)
	{
	global.units[|i].incoming_damage=0;	
	global.units[|i].str_pos=global.units[|i].cur_pos;
	}
		combat_phase=phase.start_turn
	break;
	
	
	case phase.win:

	if inst_timer_for_end.y<=-10
	{
	audio_play_sound(ph,1,false)
	if ds_list_size(global.bad_team)==1
	{
	obj_payer.unit_xp[0]+=global.bad_team[|0].xp_get;
	}
	if ds_list_size(global.bad_team)==2
	{
	obj_payer.unit_xp[0]+=global.bad_team[|0].xp_get+global.bad_team[|1].xp_get;
	}
	if ds_list_size(global.bad_team)==3
	{
	obj_payer.unit_xp[0]+=global.bad_team[|0].xp_get+global.bad_team[|1].xp_get+global.bad_team[|2].xp_get;
	}
	if obj_payer.unit_xp[0]>=obj_payer.unit_lvl[0]*10
	{
	obj_payer.unit_xp[0]=0;
	obj_payer.unit_lvl[0]+=1
	array_push(is_lvl_up,0)
	}
	}
	inst_timer_bock.image_index=2;
	inst_timer_for_end.phy_position_y+=(max(sqr(150-inst_timer_for_end.y)/25,5))/5*0.1
	inst_timer_bock.phy_position_x-=(max(sqr(215-inst_timer_bock.x)/25,5))/5*0.1
	
	for (var j = 0; j<ds_list_size(global.good_team);j++)
			{
			if global.good_team[|j].current[@HP]!=0
			{
				obj_payer._hp[j]=global.good_team[|j].current[@HP]
			}
			else
			{
				obj_payer._hp[j]=1
			}
			if global.good_team[|j].current[@SP]!=0
			{
				obj_payer._sp[j]=global.good_team[|j].current[@SP]
			}
			else
			{
				obj_payer._sp[j]=1
			}
			
			}
	
	if inst_timer_for_end.y>360
	{
		obj_payer._will_talk=false;
		obj_payer._talk_turn=0;
		obj_payer._talk_what="";
		obj_payer.battle=0;
		audio_stop_all()
		var _sound = asset_get_index(string(obj_payer._song));
		scr_sound_sette(1,_sound,true,0)
		obj_payer.need_to_rumble=false;
		room_goto(obj_payer.back_room)
	}
	break;
	
	case phase.lose:
if instance_exists(obj_b_mike_static) and turn_all>=5
{
create_textbox("First talk2")	
}

	if inst_timer_for_end.y<=-10
	{
	if instance_exists(obj_b_mike_static) and turn_all>=5
	{
	audio_stop_all()
	scr_sound_sette(1,Sng_Feeling_empty,true,1);
	}
	else
	{
	audio_stop_all()
	audio_play_sound(ph,1,false)
	audio_play_sound(Sng_Last_hope_died,2,false)
	}
	}
	if inst_timer_for_end.y<136
	{
	inst_timer_bock.image_index=1;
	inst_timer_for_end.phy_position_y+=(max(sqr(150-inst_timer_for_end.y)/50,5))/5*0.1
	inst_timer_bock.phy_position_x-=(max(sqr(220-inst_timer_bock.x)/50,5))/5*0.1
	}
	if inst_timer_for_end.y>=136
	{
	inst_timer_for_end.phy_position_y+=1
	inst_timer_bock.phy_position_x-=999

	}
	if inst_timer_for_end.y>400
	{
	audio_stop_all()
	obj_payer._will_talk=false;
	obj_payer._talk_turn=0;
	obj_payer._talk_what="";
	load_save(global.save_slot);

	}

	break;
	
}

if ds_list_size(global.selected_targets)==1 and global.selected_unit!=noone
	{
		if  global.selected_unit.state==ATTACK or global.selected_unit.state==CAST or global.selected_targets[|0].state==HURT or global.selected_targets[|0].state==MISS or global.selected_targets[|0].state==BLOCK_HURT or global.selected_targets[|0].state==BLOCK_MISS
		{
			if (display_get_width()/display_get_height()<16/9)
			{
				if cam_w<=320 cam_w=320
				else cam_w-=max(0.53,(camera_get_view_width(view_camera[0])-320)*0.1);
			
				if cam_h<=320/(display_get_width()/display_get_height()) cam_h=320/(display_get_width()/display_get_height())
				else cam_h-=max(0.4,(camera_get_view_height(view_camera[0])-320/(display_get_width()/display_get_height()))*0.1);
			}
			else
			{
				if cam_w<=180*(display_get_width()/display_get_height()) cam_w=180*(display_get_width()/display_get_height())
				else cam_w-=max(0.53,(camera_get_view_width(view_camera[0])-180*(display_get_width()/display_get_height()))*0.1);
			
				if cam_h<=180 cam_h=180
				else cam_h-=max(0.4,(camera_get_view_height(view_camera[0])-180)*0.1);
			}
			switch (global.selected_targets[|0].y)
			{
				
			case 288:
			case 258:
			if cam_y>180 cam_y-=max(0.4,(camera_get_view_y(view_camera[0])-180)*0.08);
			if cam_y<180 cam_y+=max(0.4,(180-camera_get_view_y(view_camera[0]))*0.08);

			switch (global.selected_targets[|0].x)
			{
			case 288://160
			if (display_get_width()/display_get_height()<16/9)
			{
			if cam_x>160 cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-160)*0.08);
			if cam_x<160 cam_x+=max(0.4,(160-camera_get_view_x(view_camera[0]))*0.08);
			}
			else
			{
			if cam_x>(320-180*(display_get_width()/display_get_height())/2) cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-(320-180*(display_get_width()/display_get_height())/2))*0.08);
			if cam_x<(320-180*(display_get_width()/display_get_height())/2) cam_x+=max(0.4,((320-180*(display_get_width()/display_get_height())/2)-camera_get_view_x(view_camera[0]))*0.08);	
			}
			break;
			case 384://256
			if (display_get_width()/display_get_height()<16/9)
			{
			if cam_x>256 cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-256)*0.08);
			if cam_x<256 cam_x+=max(0.4,(256-camera_get_view_x(view_camera[0]))*0.08);
			}
			else
			{	
			if cam_x>(416-180*(display_get_width()/display_get_height())/2) cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-(416-180*(display_get_width()/display_get_height())/2))*0.08);
			if cam_x<(416-180*(display_get_width()/display_get_height())/2) cam_x+=max(0.4,((416-180*(display_get_width()/display_get_height())/2)-camera_get_view_x(view_camera[0]))*0.08);
			}
			break;
			
			}
			break;
			
			case 256:
			case 226:
			if cam_y>148 cam_y-=max(0.4,(camera_get_view_y(view_camera[0])-148)*0.08);
			if cam_y<148 cam_y+=max(0.4,(148-camera_get_view_y(view_camera[0]))*0.08);

			switch (global.selected_targets[|0].x)
			{
			case 192:
			if cam_x>64 cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-64)*0.08);
			if cam_x<64 cam_x+=max(0.4,(64-camera_get_view_x(view_camera[0]))*0.08);
			break;
			
			case 480:
			if cam_x>300 cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-300)*0.08);
			if cam_x<300 cam_x+=max(0.4,(300-camera_get_view_x(view_camera[0]))*0.08);
			break;
			
			}
			break;
			
			case 224:
			case 194:
			if cam_y>116 cam_y-=max(0.4,(camera_get_view_y(view_camera[0])-116)*0.08);
			if cam_y<116 cam_y+=max(0.4,(116-camera_get_view_y(view_camera[0]))*0.08);

			switch (global.selected_targets[|0].x)
			{
			case 96:
			if cam_x>0 cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-0)*0.08);
			if cam_x<0 cam_x+=max(0.4,(0-camera_get_view_x(view_camera[0]))*0.08);
			break;
			
			case 576:
			if cam_x>320 cam_x-=max(0.4,(camera_get_view_x(view_camera[0])-320)*0.08);
			if cam_x<320 cam_x+=max(0.4,(320-camera_get_view_x(view_camera[0]))*0.08);
			break;
			
			}
			break;
			
			}
			
		}
		/*
		else
		{
			if cam_w>=640 cam_w=640
			else cam_w+=max(0.2,(640-camera_get_view_width(view_camera[0]))*0.0666);
			
			if cam_h>=360 cam_h=360
			else cam_h+=max(0.2,(360-camera_get_view_height(view_camera[0]))*0.0666);
			
			if cam_y<=0 cam_y=0
			else cam_y-=max(0.2,(sqrt(sqr(0-camera_get_view_y(view_camera[0]))))*0.0666);
			
			if cam_x<=0 cam_x=0
			else cam_x-=max(0.2,(sqrt(sqr(0-camera_get_view_x(view_camera[0]))))*0.0666);
		}*/
	}

