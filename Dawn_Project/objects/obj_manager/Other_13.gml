
if layer_get_visible(skill_ui){
layer_set_visible(skill_ui, false);
instance_deactivate_layer(skill_ui);
}else{
layer_set_visible(skill_ui, true);
instance_activate_layer(skill_ui);
for (var i = 0; i < ds_list_size(global.skills_buttons); i++)
{
	var _btn = global.skills_buttons[|i];
	if global.selected_unit.learned_skill[i] != -1
	{
	_btn.label = global.selected_unit.learned_skill[i].name;
	_btn.Hover_func = global.selected_unit.learned_skill[i].des;
	}
}

}