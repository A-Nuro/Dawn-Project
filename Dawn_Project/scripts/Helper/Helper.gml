function bubble_sort(_list)
{
	var list_size = ds_list_size(_list);
	for (var i = 0; i < list_size - 1; i++)
	{
		for (var j = 0; j < list_size - i - 1; j++)
		{
			if _list[|j].current[@ SPEED] < _list[| j + 1].current[@ SPEED]
			{
				var temp = _list[|j];
				_list[|j] = _list[|j+1];
				_list[|j+1] = temp;
			}
			if _list[|j].current[@ SPEED] == _list[| j + 1].current[@ SPEED] and _list[|j].current[@ HP] > _list[| j + 1].current[@ HP]
			{
				var temp = _list[|j];
				_list[|j] = _list[|j+1];
				_list[|j+1] = temp;
			}
			if _list[|j].current[@ SPEED] == _list[| j + 1].current[@ SPEED] and _list[|j].current[@ HP] == _list[| j + 1].current[@ HP] and _list[|j].current[@ SP] > _list[| j + 1].current[@ SP]
			{
				var temp = _list[|j];
				_list[|j] = _list[|j+1];
				_list[|j+1] = temp;
			}
		}
	}

}

function atk_spawn(_x,_y,_anim,_hitbox,_dmg)
{
	var _atk = instance_create_depth(_x,_y,-9998,obj_b_atk)
	with(_atk)
	{
		atk_spr = _anim
		atk_hitbox = _hitbox
		base[ATK] = _dmg
	}
}

function effect_anim(_ani,_side)
{
		//if draw_anim = true
		
		var _anim = instance_create_depth(x+17,y,-9997,obj_effects);
		with(_anim)
		{
		our=_side
		eff_anim=_ani;

		}
		//draw_anim = false;
			
}

function unit_attack()
{
	var _unit = global.selected_unit

		for(var i =0; i<ds_list_size(global.selected_targets); i++)
	{
		if global.selected_targets[|i].current[@ HP] > 0
		{
		var _numb = random(1);
		with(global.selected_targets[|i])
		{
			if id.cur_pos<global.selected_unit.cur_pos
			{
				if ds_list_find_index(global.good_team,id)!=-1
				{
					if (id.rev=false) back_hurts=false
					else back_hurts=true
				}
				else
				{
					if (id.rev=false) back_hurts=true
					else back_hurts=false
				}
			}
			if id.cur_pos>global.selected_unit.cur_pos
			{
				if ds_list_find_index(global.good_team,id)!=-1
				{
					if (id.rev=false) back_hurts=true
					else back_hurts=false
				}
				else
				{
					if (id.rev=false) back_hurts=false
					else back_hurts=true
				}
			}
			if (id.cur_pos==global.selected_unit.cur_pos) back_hurts=false
		}
					
if (_numb>=global.selected_targets[|i].current[@ACC] or _unit = global.selected_targets[|i])
{
	with(global.selected_targets[|i])
	{
		if global.selected_unit.selected_skill == -1
		{
		incoming_damage = _unit.current[@ ATK];
		if global.selected_unit.x>global.selected_targets[|i].x 
		{
			if (global.selected_targets[|i].back_hurts=true) 
			{
				effect_anim(back_hurt,global.selected_unit.our)
				global.selected_targets[|i].back_hurts=false
			}
			effect_anim(cutting_hurt,global.selected_unit.our)
		}
		else 
		{
			if (global.selected_targets[|i].back_hurts=true) 
			{
				effect_anim(back_hurt_mirror,global.selected_unit.our)
				global.selected_targets[|i].back_hurts=false
			}
			effect_anim(cutting_hurt_mirror,global.selected_unit.our)
		}
		
		}
		else
		{
		incoming_damage = global.selected_unit.selected_skill.hp_change;
		switch (global.selected_unit.selected_skill.reaction)
		{
			case react.buff:
			effect_anim(spr_buff,global.selected_unit.our);
			break;
			case react.debuff:
			effect_anim(spr_debuff,global.selected_unit.our);
			case react.hurt:
			if global.selected_unit.x>global.selected_targets[|i].x 
			{
				if (global.selected_targets[|i].back_hurts=true) 
				{
					effect_anim(back_hurt,global.selected_unit.our)
					global.selected_targets[|i].back_hurts=false
				}
				effect_anim(cutting_hurt,global.selected_unit.our)
			}
			else 
			{
				if (global.selected_targets[|i].back_hurts=true) 
				{
					effect_anim(back_hurt_mirror,global.selected_unit.our)
					global.selected_targets[|i].back_hurts=false
				}
				effect_anim(cutting_hurt_mirror,global.selected_unit.our)
			}
			break;
		}
		
		}
		if !(_unit==global.selected_targets[|0] and ds_list_size(global.selected_targets)==1)
		{
		if (!defending)
		{
		state = HURT;
		layer_sequence_headpos(unit_sequence, hurt_start);
		}
		else
		{
		state = BLOCK_HURT;
		layer_sequence_headpos(unit_sequence, block_hurt_start);
		}
		}
		
	}
}
else
{
	with(global.selected_targets[|i])
	{
		
		if global.selected_unit.selected_skill == -1
		{
		
		if global.selected_unit.x>global.selected_targets[|i].x effect_anim(cutting_miss,global.selected_unit.our)
		else effect_anim(cutting_miss_mirror,global.selected_unit.our)
		}
		else
		{
		switch (global.selected_unit.selected_skill.reaction)
		{
			case react.buff:
			effect_anim(spr_buff,global.selected_unit.our);
			break;
			case react.debuff:
			effect_anim(spr_debuff,global.selected_unit.our);
			case react.hurt:
			if global.selected_unit.x>global.selected_targets[|i].x effect_anim(cutting_miss,global.selected_unit.our)
			else effect_anim(cutting_miss_mirror,global.selected_unit.our)	
			break;
		}
		}
		if !(_unit==global.selected_targets[|0] and ds_list_size(global.selected_targets)==1)
		{
		if (!defending)
		{
		state = MISS;
		layer_sequence_headpos(unit_sequence, miss_start);
		}
		else
		{
		state = BLOCK_MISS;
		layer_sequence_headpos(unit_sequence, block_hurt_start);
		}
		}
		
	}
}
		}
		else
		{
	with(global.selected_targets[|i])
	{

		if global.selected_unit.selected_skill == -1
		{
		if ds_list_find_index(global.good_team,global.selected_targets[|i])!=-1
		{
		effect_anim(cutting_miss,global.selected_unit.our)
		}
		else
		{
		effect_anim(cutting_hurt,global.selected_unit.our)
		}
		}
		else
		{
		switch (global.selected_unit.selected_skill.reaction)
		{
			case react.buff:
			effect_anim(spr_buff,global.selected_unit.our);
			break;
			case react.debuff:
			effect_anim(spr_debuff,global.selected_unit.our);
			case react.hurt:
			if global.selected_unit.x>global.selected_targets[|i].x effect_anim(cutting_miss,global.selected_unit.our)
			else effect_anim(cutting_miss_mirror,global.selected_unit.our)	
			break;
		}
		}
		state = DEATH;
		layer_sequence_headpos(unit_sequence, death_start);
	}
		}
}
}

function did_attack()
{
	
}

function unit_defend()
{
with(global.selected_unit){
	defending = true;
}
}
/*
function unit_skill()
{
	obj_manager.skill_sent = true;
	var _unit = global.selected_unit
		for(var i =0; i<ds_list_size(global.selected_targets); i++)
	{
		if global.selected_targets[|i].current[@ HP] > 0
		{
var _numb = random(1);
					
if (_numb>=global.selected_targets[|i].current[@ACC] or _unit = global.selected_targets[|i])
{
	with(global.selected_targets[|i])
	{
		if global.selected_unit.selected_skill == -1  or global.selected_unit.selected_skill.reaction==react.hurt
		{
		incoming_damage = _unit.current[@ ATK];
		effect_anim(cutting_hurt)
		}
		else
		{
		incoming_damage = global.selected_unit.selected_skill.hp_change;
		switch (global.selected_unit.selected_skill.reaction)
		{
			case react.buff:
			effect_anim(spr_buff);
			break;
			case react.debuff:
			effect_anim(spr_debuff);
			break;
		}
		
		}
		if (!defending)
		{
		state = HURT;
		layer_sequence_headpos(unit_sequence, hurt_start);
		}
		else
		{
		state = BLOCK_HURT;
		layer_sequence_headpos(unit_sequence, block_hurt_start);
		}
		
	}
}
else
{
	with(global.selected_targets[|i])
	{
		
		if global.selected_unit.selected_skill == -1 or global.selected_unit.selected_skill.reaction==react.hurt
		{
		effect_anim(cutting_miss)
		}
		else
		{
		switch (global.selected_unit.selected_skill.reaction)
		{
			case react.buff:
			effect_anim(spr_buff);
			break;
			case react.debuff:
			effect_anim(spr_debuff);
			break;
		}
		}
		if (!defending)
		{
		state = MISS;
		layer_sequence_headpos(unit_sequence, miss_start);
		}
		else
		{
		state = BLOCK_MISS;
		layer_sequence_headpos(unit_sequence, block_hurt_start);
		}
		
	}
}
		}
		else
		{
	with(global.selected_targets[|i])
	{


		state = DEATH;
		layer_sequence_headpos(unit_sequence, death_start);
	}
		}
}
}
*/
function unit_skill()
{

	for(var i =0; i<ds_list_size(global.selected_targets); i++)
	{
	if global.selected_targets[|i].current[@ HP] > 0
	{

		
	obj_manager.skill_sent = true;	
	
	with (global.selected_targets[|i])
	{	
		incoming_damage = global.selected_unit.selected_skill.hp_change;
		switch (global.selected_unit.selected_skill.type)
		{
			case skill_type.buff:
			case skill_type.magic_buff:
			
			effect_anim(spr_buff,global.selected_unit.our);
			
			break;
			case skill_type.debuff:
			case skill_type.magic_debuff:
			
			effect_anim(spr_debuff,global.selected_unit.our);
			
			break;
		}
		if !(global.selected_unit==global.selected_targets[|0] and ds_list_size(global.selected_targets)==1)
		{
		if (!defending)
		{
		state = HURT;
		layer_sequence_headpos(unit_sequence, hurt_start);
		}
		else
		{
		state = BLOCK_HURT;
		layer_sequence_headpos(unit_sequence, block_hurt_start);
		}
		}
	}
	}
	else
	{
			obj_manager.skill_sent = true;	
	
	with (global.selected_targets[|i])
	{
		switch (global.selected_unit.selected_skill.type)
		{
			case skill_type.buff:
			case skill_type.magic_buff:
			
			effect_anim(spr_buff,global.selected_unit.our);
			
			break;
			case skill_type.debuff:
			case skill_type.magic_debuff:
			
			effect_anim(spr_debuff,global.selected_unit.our);
			
			break;
		}
		incoming_damage = global.selected_unit.selected_skill.hp_change;
		if !(global.selected_unit==global.selected_targets[|0] and ds_list_size(global.selected_targets)==1)
		{
		if incoming_damage<0
		{
		state = HURT;
		layer_sequence_headpos(unit_sequence, hurt_start);	
		}
		}
		//damage_unit(incoming_damage);
	}
	}
	}
	
}

function self_target_attack()
{
	ds_list_add(global.selected_targets,global.selected_unit);
}

function single_target_attack()
{
	ds_list_add(global.selected_targets, instance_position(obj_cursor.x, obj_cursor.y, obj_unit));
}

function multi_target_attack()
{
	ds_list_copy(global.selected_targets, global.targets);
}

function multi_target_team_attack()
{
	
	for (var i = 0; i < ds_list_size(global.targets); i++)
	{
	if global.targets[|i].team!=global.selected_unit.team
	{
	ds_list_add(global.selected_targets,global.targets[|i]);
	}
	}
}

function multi_target_all_attack()
{
	ds_list_copy(global.selected_targets, global.targets);
	ds_list_add(global.selected_targets,global.selected_unit)
}

function gp_any()
{	
	for (var g=0; g<=gamepad_get_device_count(); g++)
	{
	if gamepad_is_connected(g)
	{
	if gamepad_button_check_pressed(g, gp_face1) or gamepad_button_check_pressed(g, gp_face2) or gamepad_button_check_pressed(g, gp_face3) or gamepad_button_check_pressed(g, gp_face4) or gamepad_button_check_pressed(g, gp_padd) or gamepad_button_check_pressed(g, gp_padu) or gamepad_button_check_pressed(g, gp_padl) or gamepad_button_check_pressed(g, gp_padr) or gamepad_button_check_pressed(g, gp_shoulderl) or gamepad_button_check_pressed(g, gp_shoulderlb) or gamepad_button_check_pressed(g, gp_shoulderr) or gamepad_button_check_pressed(g, gp_shoulderrb) or gamepad_button_check_pressed(g, gp_select) or gamepad_button_check_pressed(g, gp_start) or gamepad_button_check_pressed(g, gp_stickl) or gamepad_button_check_pressed(g, gp_stickr) or gamepad_button_check_pressed(g, gp_home) or gamepad_axis_value(g,gp_axislh)>0.3 or gamepad_axis_value(g,gp_axislh)<-0.3 or gamepad_axis_value(g,gp_axislv)>0.3 or gamepad_axis_value(g,gp_axislv)<-0.3 or gamepad_axis_value(g,gp_axisrh)>0.3 or gamepad_axis_value(g,gp_axisrh)<-0.3 or gamepad_axis_value(g,gp_axisrv)>0.3 or gamepad_axis_value(g,gp_axisrv)<-0.3
	{
		return true;
	}
	else
	{
		return false;
	}
	}
	}
}
function gp_any_hold()
{	
	for (var g=0; g<=gamepad_get_device_count(); g++)
	{
	if gamepad_is_connected(g)
	{
	if gamepad_button_check(g, gp_face1) or gamepad_button_check(g, gp_face2) or gamepad_button_check(g, gp_face3) or gamepad_button_check(g, gp_face4) or gamepad_button_check(g, gp_padd) or gamepad_button_check(g, gp_padu) or gamepad_button_check(g, gp_padl) or gamepad_button_check(g, gp_padr) or gamepad_button_check(g, gp_shoulderl) or gamepad_button_check(g, gp_shoulderlb) or gamepad_button_check(g, gp_shoulderr) or gamepad_button_check(g, gp_shoulderrb) or gamepad_button_check(g, gp_select) or gamepad_button_check(g, gp_start) or gamepad_button_check(g, gp_stickl) or gamepad_button_check(g, gp_stickr) or gamepad_button_check(g, gp_home) or gamepad_axis_value(g,gp_axislh)>0.3 or gamepad_axis_value(g,gp_axislh)<-0.3 or gamepad_axis_value(g,gp_axislv)>0.3 or gamepad_axis_value(g,gp_axislv)<-0.3 or gamepad_axis_value(g,gp_axisrh)>0.3 or gamepad_axis_value(g,gp_axisrh)<-0.3 or gamepad_axis_value(g,gp_axisrv)>0.3 or gamepad_axis_value(g,gp_axisrv)<-0.3
	{
		return true;
	}
	else
	{
		return false;
	}
	}
	}
}
function gpl()
{	last=0;
	for (var g=0; g<=gamepad_get_device_count(); g++)
	{
	if gamepad_button_check_pressed(g, gp_face1) or gamepad_button_check_pressed(g, gp_face2) or gamepad_button_check_pressed(g, gp_face3) or gamepad_button_check_pressed(g, gp_face4) or gamepad_button_check_pressed(g, gp_padd) or gamepad_button_check_pressed(g, gp_padu) or gamepad_button_check_pressed(g, gp_padl) or gamepad_button_check_pressed(g, gp_padr) or gamepad_button_check_pressed(g, gp_shoulderl) or gamepad_button_check_pressed(g, gp_shoulderlb) or gamepad_button_check_pressed(g, gp_shoulderr) or gamepad_button_check_pressed(g, gp_shoulderrb) or gamepad_button_check_pressed(g, gp_select) or gamepad_button_check_pressed(g, gp_start) or gamepad_button_check_pressed(g, gp_stickl) or gamepad_button_check_pressed(g, gp_stickr) or gamepad_button_check_pressed(g, gp_home) or gamepad_axis_value(g,gp_axislh)>0.3 or gamepad_axis_value(g,gp_axislh)<-0.3 or gamepad_axis_value(g,gp_axislv)>0.3 or gamepad_axis_value(g,gp_axislv)<-0.3 or gamepad_axis_value(g,gp_axisrh)>0.3 or gamepad_axis_value(g,gp_axisrh)<-0.3 or gamepad_axis_value(g,gp_axisrv)>0.3 or gamepad_axis_value(g,gp_axisrv)<-0.3
	{
		last=g;
		return g;
	}
	else
	{
		return last;
	}
	}
}