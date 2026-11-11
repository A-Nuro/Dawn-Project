// Inherit the parent event
if id=global.selected_unit and obj_payer.stil_moving=false
{
depth = obj_payer.depth
event_inherited();
x=obj_payer.phy_position_x-17
y=obj_payer.phy_position_y
}

if (array_get_index(global.team,object_index)==obj_payer.playable_team) global.selected_unit=id

if obj_payer.danger==false 
{
	global.selected_unit=noone
	instance_destroy()
}
if current[@ HP]<=1 and instance_exists(obj_b_anna_tapes)
{
	current[@ HP] = 1;

}
