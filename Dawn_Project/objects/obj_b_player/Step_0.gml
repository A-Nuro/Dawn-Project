// Inherit the parent event
event_inherited();
x=obj_payer.x-17
y=obj_payer.y
if obj_payer.danger==false 
{
	global.selected_unit=noone
	instance_destroy()
}
if current[@ HP]<=1 and instance_exists(obj_b_anna_tapes)
{
	current[@ HP] = 1;

}
