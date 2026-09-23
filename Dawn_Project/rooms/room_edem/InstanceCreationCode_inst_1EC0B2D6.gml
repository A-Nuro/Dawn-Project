this_bg=bg_pink_grass
this_enemy=[obj_b_anna_tapes]
this_song=Sng_Pink_grass_battle_mix;
will_talks=true;
talk_turn=0;
talk_what="first_fight_1";
function after_fight()
{
	if array_get_index(global.team,obj_b_anna) == -1 array_push(global.team,obj_b_anna)
	obj_payer.faza[11]=24;
}
function enemy_doings()
{

}
