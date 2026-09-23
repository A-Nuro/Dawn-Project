if (event_data[? "event_type"] == "sequence event")
{
	switch(event_data[? "message"])
	{
		
		case "skill_sent":
			skill_sent = true;
		case "attack_sent":
			selected_finished = true;
			//process_finished = true;
		break
		case "unit_defend":
			global.selected_unit.turn_finished = true;
			selected_finished = true;
			//process_finished = true;
		break;
		case "unit_hurt":
		global.selected_unit.turn_finished = true;
		case "unit_defend_hurt":
		case "unit_death":
		case "unit_miss":
			//process_finished = true;
		break;

	}
}