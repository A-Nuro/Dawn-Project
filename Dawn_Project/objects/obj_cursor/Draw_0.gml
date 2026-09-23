if (global.targeting or global.skill_targeting) and obj_manager.combat_phase==phase.wait
{
if (cursor >= global.selected_unit.cur_pos-1 and cursor <= global.selected_unit.cur_pos+1) draw_self();
}

if global.selected_unit!=noone
{
if global.selected_unit.selected_skill == -1 or global.selected_unit.selected_skill.action = single_target_attack
{


}
else
{
for (var i = 0; i < ds_list_size(global.units); i++)
{
if global.units[|i] != global.selected_unit
{
	global.units[|i].multi_draw = true;
}
}
}
}
if (global.targeting or global.skill_targeting) and obj_manager.combat_phase==phase.wait
{

scribble("Выберите цель с помощью <- -> и Enter или используйте мышку").starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(240,50);

}