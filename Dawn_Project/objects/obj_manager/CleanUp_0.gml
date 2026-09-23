if (ds_exists(global.units,ds_type_list))
{
ds_list_destroy(global.units);	
}

if (ds_exists(global.alive_units,ds_type_list))
{
ds_list_destroy(global.alive_units);	
}

if (ds_exists(global.targets,ds_type_list))
{
ds_list_destroy(global.targets);	
}

if (ds_exists(global.skills_buttons,ds_type_list))
{
ds_list_destroy(global.skills_buttons);	
}

if (ds_exists(global.selected_targets,ds_type_list))
{
ds_list_destroy(global.selected_targets);	
}

if (ds_exists(global.btn_txt,ds_type_list))
{
ds_list_destroy(global.btn_txt);	
}
if (ds_exists(global.good_team,ds_type_list))
{
ds_list_destroy(global.good_team);	
}
if (ds_exists(global.bad_team,ds_type_list))
{
ds_list_destroy(global.bad_team);	
}
