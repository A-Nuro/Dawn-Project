var scr = display_get_width()/display_get_height()
if global.selected_unit!=noone
{
	if (scr<16/9)
	{
		if cam_w<640 and (instance_exists(obj_textbox) or combat_phase=phase.win or combat_phase=phase.lose or (global.selected_unit.state!=ATTACK and global.selected_unit.state!=HURT and global.selected_unit.state!=DEATH_HURT and global.selected_unit.state!=CAST and (global.selected_unit.is_ai1==false or global.selected_unit.state=NO_THING) and (combat_phase=phase.wait or combat_phase=phase.win or combat_phase=phase.lose or global.selected_unit.state=NO_THING)))
		{
			/*if !(ds_list_size(global.good_team)==1 and ds_list_size(global.bad_team)==1)
			{*/
			if cam_w>=640 cam_w=640
			else cam_w+=max(0.2,(640-camera_get_view_width(view_camera[0]))*0.0666);
	
			if cam_h>=640/scr cam_h=640/scr
			else cam_h+=max(0.2,(640/scr-camera_get_view_height(view_camera[0]))*0.0666);
		
			if cam_y<=0-(640/scr-360)/2 cam_y=0-(640/scr-360)/2
			else cam_y-=max(0.2,(sqrt(sqr(0-(640/scr-360)/2-camera_get_view_y(view_camera[0]))))*0.0666);
	
			if cam_x<=0 cam_x=0
			else cam_x-=max(0.2,(sqrt(sqr(0-camera_get_view_x(view_camera[0]))))*0.0666);
			/*}
			else
			{
			cam_w=640
			cam_h=640/scr
			cam_y=0-(640/scr-360)/2
			cam_x=0
			}*/
		}
	}
	else
	{
		if cam_h<360 and (instance_exists(obj_textbox) or combat_phase=phase.win or combat_phase=phase.lose or (global.selected_unit.state!=ATTACK and global.selected_unit.state!=HURT and global.selected_unit.state!=DEATH_HURT and global.selected_unit.state!=CAST and (global.selected_unit.is_ai1==false or global.selected_unit.state=NO_THING) and (combat_phase=phase.wait or combat_phase=phase.win or combat_phase=phase.lose or global.selected_unit.state=NO_THING)))
		{
			/*if !(ds_list_size(global.good_team)==1 and ds_list_size(global.bad_team)==1)
			{*/
			if cam_w>=360*scr cam_w=360*scr
			else cam_w+=max(0.2,(360*scr-camera_get_view_width(view_camera[0]))*0.0666);
	
			if cam_h>=360 cam_h=360
			else cam_h+=max(0.2,(360-camera_get_view_height(view_camera[0]))*0.0666);
		
			if cam_y<=0 cam_y=0
			else cam_y-=max(0.2,(sqrt(sqr(0-camera_get_view_y(view_camera[0]))))*0.0666);
		
			if cam_x<=0-(360*scr-640)/2 cam_x=0-(360*scr-640)/2
			else cam_x-=max(0.2,(sqrt(sqr(0-(360*scr-640)/2-camera_get_view_x(view_camera[0]))))*0.0666);
			/*
			}
			else
			{
			cam_w=360*scr
			cam_h=360
			cam_y=0
			cam_x=0-(360*scr-640)/2
			}*/
		}
	}
}
//if !(ds_list_size(global.good_team)==1 and ds_list_size(global.bad_team)==1)
//{
camera_set_view_size(view_camera[0],cam_w,cam_h)
camera_set_view_pos(view_camera[0],cam_x,cam_y)
//}


	if gamepad_is_connected(gpl())
	{
	if (allow_input and gamepad_button_check_released(gpl(),gp_face1))
{
if (global.targeting)
{
	if (position_meeting(obj_cursor.x, obj_cursor.y, obj_unit))
	{
		var _unit = instance_position(obj_cursor.x, obj_cursor.y, obj_unit);

		ds_list_clear(global.selected_targets);
		with (global.selected_unit)
		{
			state = ATTACK;
			layer_sequence_headpos(unit_sequence, attack_start)
		}
		event_user(0);
		ds_list_add(global.selected_targets, _unit);
		
		
		
	}
	
	
}

if (global.skill_targeting)
{
	if (position_meeting(obj_cursor.x, obj_cursor.y, obj_unit))
	{
		var _unit = instance_position(obj_cursor.x, obj_cursor.y, obj_unit);
		var _skill = global.selected_unit.selected_skill;
		ds_list_clear(global.selected_targets);
		with (global.selected_unit)
		{
			switch(selected_skill.reaction)
		{
			case  react.hurt:
			state = ATTACK;
			layer_sequence_headpos(unit_sequence, attack_start)
			break;
			case  react.buff:
			case  react.debuff:
			state = CAST;
			layer_sequence_headpos(unit_sequence, cast_start)
			break;

		}
		}
		event_user(0);
		script_execute(_skill.action, _unit);
		
		
	}
	
	
}

}
	
}