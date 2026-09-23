
function attack_button(){
global.targeting = true;
for (var i = 0; i< ds_list_size(global.units); i++)
{
var _inst = global.units[|i];
ds_list_add(global.targets, _inst);
}
if ds_list_find_index(global.bad_team,instance_position(global.selected_unit.x-96,320-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5)*32,obj_unit))!=-1
{
	obj_cursor.cursor=global.selected_unit.cur_pos-1;
}
if ds_list_find_index(global.bad_team,instance_position(global.selected_unit.x+96,320-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5)*32,obj_unit))!=-1
{
	obj_cursor.cursor=global.selected_unit.cur_pos+1;
}
if ds_list_find_index(global.bad_team,instance_position(global.selected_unit.x,290-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32,obj_unit))!=-1
{
	obj_cursor.cursor=global.selected_unit.cur_pos;
	obj_cursor.add=-30;
}
if ds_list_find_index(global.bad_team,instance_position(global.selected_unit.x-96,290-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5)*32,obj_unit))!=-1
{
	obj_cursor.cursor=global.selected_unit.cur_pos-1;
	obj_cursor.add=-30;
}
if ds_list_find_index(global.bad_team,instance_position(global.selected_unit.x+96,290-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5)*32,obj_unit))!=-1
{
	obj_cursor.cursor=global.selected_unit.cur_pos+1;
	obj_cursor.add=-30;
}

with(obj_manager){
event_user(0);	
event_user(1);	
event_user(2);	
event_user(0)}
}

function defend_button(){
if(obj_manager.allow_input)
{
with (global.selected_unit)
{
state = TO_BLOCK;
layer_sequence_headpos(unit_sequence,to_block_start);
}
with(obj_manager)
{
event_user(1);	
}
}
obj_manager.allow_input = false
}
	
function skill_button(){
	if global.selected_unit.learned_skill[@ ds_list_find_index(global.skills_buttons, id)] != -1 and global.selected_unit.learned_skill[@ ds_list_find_index(global.skills_buttons, id)] !=global.skill[skills.no_skill]
	{
	var _cost = global.selected_unit.learned_skill[@ ds_list_find_index(global.skills_buttons, id)].cost
	var _sp = global.selected_unit.current[@ SP];
	if (_sp >= _cost)
	{
		global.skill_targeting = true;
		global.selected_unit.selected_skill = global.selected_unit.learned_skill[@ ds_list_find_index(global.skills_buttons, id)];
		for (var i = 0; i < ds_list_size(global.units); i++)
		{
		var _inst = global.units[|i];
		if (_inst != global.selected_unit)
		{
		ds_list_add(global.targets, _inst);
		}
		}
		with(obj_manager)
	{
		event_user(0);
		event_user(3);
		event_user(0);
	}
	}

}
}

function inv_button()
{
obj_inventory.inv_active=true;
with(obj_manager){
event_user(0);	
event_user(1);	
event_user(2);	
event_user(0)}
}

function skill_menu(){

with(obj_manager){
	
event_user(0);	
event_user(1);
event_user(2);
event_user(3);
event_user(0);
	}
}

function cancel_button(){
global.selected_unit.selected_skill = -1;
global.targeting = false;
global.skill_targeting = false;
ds_list_clear(global.targets);
obj_inventory.inv_active=false;
with(obj_manager)
{
event_user(1);
if (layer_get_visible(target_ui))
{event_user(2)}
if (layer_get_visible(skill_ui))
{event_user(3)}
}
}