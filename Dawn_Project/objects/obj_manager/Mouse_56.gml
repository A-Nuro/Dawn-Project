/*if (allow_input)
{

with (global.selected_unit){
	state = ATTACK;
	layer_sequence_headpos(unit_sequence, attack_start);
	for (var i = 0; i < ds_list_size(global.units); i++)
	{
	if (global.units[|i] != global.selected_unit)
	{
	global.selected_targets = global.units[|i];
	break
	}
	}
}
allow_input = false;
}
*/

if (allow_input and position_meeting(mouse_x, mouse_y, obj_cursor))
{
if (global.targeting)
{
	if (position_meeting(obj_cursor.x, obj_cursor.y, obj_unit))
	{
		if (global.dev!=2 or andr_tap>=1)
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
		andr_tap=0;
		}
		else andr_tap+=1;
		
	}
	else andr_tap=0
}

if (global.skill_targeting)
{
	if (position_meeting(obj_cursor.x, obj_cursor.y, obj_unit))
	{
		if (global.dev!=2 or andr_tap>=1)
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
		
		andr_tap=0;
		}
		else andr_tap+=1;
		
	}
	
	
}

}
