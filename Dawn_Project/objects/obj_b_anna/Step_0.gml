/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

// Inherit the parent event
event_inherited();

if obj_payer.danger==false 
{
	global.selected_unit=noone
	instance_destroy()
}
if id=global.selected_unit and obj_payer.stil_moving=false
{
depth = obj_payer.depth
event_inherited();
x=obj_payer.x-17
y=obj_payer.y
}