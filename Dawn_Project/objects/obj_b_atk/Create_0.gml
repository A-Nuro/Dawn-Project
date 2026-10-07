event_inherited();
is_ai=true;
is_ai1=true;
unit_name = "Ленты"
unit_post_name = "ют"
unit_name_atk = "Ленты"
our=false

base[HP] = 10000;
base[SP] = 0;
base[SPEED] = 0;
base[ATK] = 0;
base[DEF] = 100;
base[ACC] = 0.1;

base[DEF_G] = 0.5;

current[HP] = base[@ HP];
current[SP] = base[@ SP];
current[SPEED] = base[@ SPEED];
current[ATK] = base[@ ATK];
current[DEF] = base[@ DEF];
current[ACC] = base[@ ACC];

var _layer = layer_create(id.depth);

unit_sequence = noone//layer_sequence_create(_layer,x-999,y-999,seq_fear);

idle_start = 0;
idle_end = 59;

attack_start = 0;
attack_end = 419;

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

learned_skill[0]= global.skill[skills.no_skill];
learned_skill[1] = global.skill[skills.no_skill];
learned_skill[2] = global.skill[skills.no_skill];
learned_skill[3] = global.skill[skills.no_skill];
learned_skill[4] = global.skill[skills.no_skill];
learned_skill[5] = global.skill[skills.no_skill];
learned_skill[6] = global.skill[skills.no_skill];
learned_skill[7] = global.skill[skills.no_skill];

base[ATK]=baseATK
current[ATK] = base[@ ATK]

atk_spr=atk_spr_spawn
def_spr=atk_spr_spawn
atk_hitbox=atk_hitbox_spawn


state=ATTACK

function ai_doings()
{
if state != ATTACK
{
instance_destroy()
}
}
