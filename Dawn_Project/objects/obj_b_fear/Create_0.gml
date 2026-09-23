event_inherited();

is_ai=true;
is_ai1=true;
our=false
unit_name = "Страх"
unit_post_name = "ет"
unit_name_atk = "страх"

base[HP] = 69;
base[SP] = 1;
base[SPEED] = irandom_range(1,8);
base[ATK] = 20
base[DEF] = 10;
base[ACC] = 0.09;

current[HP] = base[@ HP];
current[SP] = base[@ SP];
current[SPEED] = base[@ SPEED];
current[ATK] = base[@ ATK];
current[DEF] = base[@ DEF];
current[ACC] = base[@ ACC];

var _layer = layer_create(id.depth);

unit_sequence = layer_sequence_create(_layer,x,y,seq_fear);

def_spr = spr_fear_fight
atk_spr = spr_fear_attack;
atk_hitbox = spr_fear_attack_hit;


idle_start = 0;
idle_end = 239;

attack_start = 240;
attack_end = 327;

cast_start = 240;
cast_end = 327;

block_start = 240;
block_end = 299;

hurt_start = 328;
hurt_end = 387;

miss_start = 388;
miss_end = 447;

death_start = 448;
death_end = 519;

to_block_start = 430;
to_block_end = 459;

block_hurt_start = 460;
block_hurt_end = 519;

idle1_start = 0;
idle1_end = 239;

no_thing_start = 520;
no_thing_end = 559;

no_thing[0] = "Стонет";
no_thing[1] = "Плачет";

what_to_do=-1;

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
if current[@ HP] < base[@ HP] current[SP] = base[@ SP]-1;
if current[@ HP] >= base[@ HP] current[SP] = base[@ SP];

if current[@ SP]<=0
{
if state != ATTACK and current_second mod 5 == 0
{
state = ATTACK;
layer_sequence_headpos(unit_sequence, attack_start)
}

}
}