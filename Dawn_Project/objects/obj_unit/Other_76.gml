if (event_data[? "event_type"] == "sequence event")
{
	/*
	switch(event_data[? "message"])
	{
		case "unit_def_sp_heal":
		if (global.selected_unit=id) use_skill_points(-2)
		break
		
		case "attack_sent":
		case "skill_sent":
		//if (global.selected_unit==id and global.selected_unit==global.selected_targets[|0] and ds_list_size(global.selected_targets)==1) need_to_hurt = true
		effect_anim(cutting_hurt_mirror,global.selected_unit.our)
		break
		
	}*/
	if event_data[? "message"]==string(id.unit_name)+"_attack"
	{
		effect_anim(cutting_hurt_mirror,id.our)
	}
}
