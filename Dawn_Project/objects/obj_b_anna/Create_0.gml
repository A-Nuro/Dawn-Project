event_inherited();
unit_name = "Аня"
unit_post_name = "ет"
unit_name_atk = "Аню"

spr_pr=spr_anna_inv;

is_ai=false;
is_ai1=false;

base[HP] = 65;
base[SP] = 50;
base[SPEED] = irandom_range(1,10);
base[ATK] = 18;
base[DEF] = 13;
base[ACC] = 1;

current[HP] = base[@ HP];
current[SP] = base[@ SP];
current[SPEED] = base[@ SPEED];
current[ATK] = base[@ ATK];
current[DEF] = base[@ DEF];
current[ACC] = base[@ ACC];

unit_sequence = layer_sequence_create("sequences",x,y,seq_anna);

spr_pr=spr_anna_inv;

idle_start = 0;
idle_end = 59;

attack_start = 60;
attack_end = 119;

cast_start = 120;
cast_end = 239;

block_start = 240;
block_end = 299;

hurt_start = 300;
hurt_end = 359;

miss_start = 360;
miss_end = 419;

death_start = 420;
death_end = 429;

to_block_start = 430;
to_block_end = 459;

block_hurt_start = 460;
block_hurt_end = 519;

idle1_start = 520;
idle1_end = 559;

learned_skill[0]= global.skill[skills.heal];
learned_skill[1]= global.skill[skills.slash];
learned_skill[2]= global.skill[skills.dmg_up];
learned_skill[3] = global.skill[skills.no_skill];
learned_skill[4] = global.skill[skills.no_skill];
learned_skill[5] = global.skill[skills.no_skill];
learned_skill[6] = global.skill[skills.no_skill];
learned_skill[7] = global.skill[skills.no_skill];

function ai_doings()
{

if ds_list_empty(global.targets)
{
var hto = irandom_range(0,ds_list_size(global.bad_team)-1)
ds_list_add(global.targets, instance_position(384+96*hto,288-32*hto, obj_unit))
}
ds_list_copy(global.selected_targets, global.targets);
if state != ATTACK and !instance_exists(obj_effects)
{
state = ATTACK;
layer_sequence_headpos(unit_sequence, attack_start)
}
}