/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if (state == IDLE or state == IDLE1)
{
		if (keyboard_check(ord("D")) or keyboard_check(ord("A"))) //and sprite_index!=asset_get_index(def_spr+dir+"w")
	{
		sprite_index=asset_get_index(def_spr+dir+"w")
	}
	if !keyboard_check(ord("D")) and !keyboard_check(ord("A"))
	{
		sprite_index=asset_get_index(def_spr+dir)
	}
}
// Inherit the parent event
draw_self();
// Inherit the parent event
event_inherited();

