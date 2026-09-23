event_inherited();
is_ai=true;
is_ai1=true;
unit_name = "???"
unit_post_name = "ет"
unit_name_atk = "???"

base[HP] = 248;
base[SP] = 60;
base[SPEED] = 11;
base[ATK] = 20;
base[DEF] = 15;
base[ACC] = 0.1;

base[DEF_G] = 0.5;

current[HP] = base[@ HP];
current[SP] = base[@ SP];
current[SPEED] = base[@ SPEED];
current[ATK] = base[@ ATK];
current[DEF] = base[@ DEF];
current[ACC] = base[@ ACC];

unit_sequence = layer_sequence_create("sequences",x,y,seq_mike_static);

idle_start = 0;
idle_end = 59;

attack_start = 60;
attack_end = 119;

cast_start = 120;
cast_end = 187;

block_start = 240;
block_end = 299;

hurt_start = 300;
hurt_end = 359;

miss_start = 360;
miss_end = 419;

death_start = 420;
death_end = 479;

to_block_start = 430;
to_block_end = 459;

block_hurt_start = 460;
block_hurt_end = 519;

idle1_start = 520;
idle1_end = 559;

learned_skill[0] = global.skill[skills.no_skill];
learned_skill[1] = global.skill[skills.no_skill];
learned_skill[2] = global.skill[skills.no_skill];
learned_skill[3] = global.skill[skills.no_skill];
learned_skill[4] = global.skill[skills.no_skill];
learned_skill[5] = global.skill[skills.no_skill];
learned_skill[6] = global.skill[skills.no_skill];
learned_skill[7] = global.skill[skills.no_skill];

function ai_doings()
{
if obj_manager.turn_all>=5
{
	current[ATK]=9999;
	ignore_rand=true
	ignore_def=true
	ignore_block=true
	ignore_pos=true
}

if ds_list_empty(global.targets)
{
var hto = irandom_range(0,ds_list_size(global.good_team)-1)
//ds_list_add(global.targets, instance_position(288-96*hto,288-32*hto, obj_unit))
ds_list_add(global.targets, ds_list_find_value(global.good_team,hto))
}
ds_list_copy(global.selected_targets, global.targets);
if global.selected_targets[|0].cur_pos!=id.cur_pos-1 and global.selected_targets[|0].cur_pos<id.cur_pos
{
		x-=96;
		if x<288 y-=32;
		if x>=384 y+=32;
		if (cur_pos!=1) cur_pos--
		obj_cursor.cursor--
}
if global.selected_targets[|0].cur_pos!=id.cur_pos+1 and global.selected_targets[|0].cur_pos>id.cur_pos
{
		x+=96;
		if x<=288 y+=32;
		if x>384 y-=32;
		if (cur_pos!=6) cur_pos++
		obj_cursor.cursor++
}

if state != ATTACK and !instance_exists(obj_effects)
{
state = ATTACK;
layer_sequence_headpos(unit_sequence, attack_start)
}



}
