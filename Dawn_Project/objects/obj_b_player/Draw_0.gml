/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if state = IDLE
{
	if keyboard_check(ord("D")) and sprite_index!=spr_mike_fight_1rw
	{
		sprite_index=spr_mike_fight_1rw	
	}
	if !keyboard_check(ord("D")) and sprite_index!=spr_mike_fight_1
	{
		sprite_index=spr_mike_fight_1
	}
}
// Inherit the parent event
draw_self();
// Inherit the parent event
event_inherited();

