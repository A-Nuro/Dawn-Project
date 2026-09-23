event_inherited();



base[HP] = 80//+(obj_payer.unit_lvl[0] div 2 )*2+(obj_payer.unit_lvl[0] div 3)*2+(obj_payer.unit_lvl[0] div 7)*3+(obj_payer.unit_lvl[0] div 5)+(obj_payer.unit_lvl[0] div 10)*6+(obj_payer.unit_lvl[0] div 99);
base[SP] = 40//+(obj_payer.unit_lvl[0] div 3)*3+(obj_payer.unit_lvl[0] div 10)*5+(obj_payer.unit_lvl[0] div 7)*4+(obj_payer.unit_lvl[0] div 4)*2;
base[SPEED] = irandom_range(1,10);
base[ATK] = 35//+(obj_payer.unit_lvl[0] div 2.5 )+(obj_payer.unit_lvl[0] div 5); //4
base[DEF] = 16//+(obj_payer.unit_lvl[0] div 5)+(obj_payer.unit_lvl[0] div 10)*3;
base[ACC] = 0.04//+((obj_payer.unit_lvl[0] div 20)/10);

current[HP] = base[@ HP];
current[SP] = base[@ SP];
current[SPEED] = base[@ SPEED];
current[ATK] = base[@ ATK];
current[DEF] = base[@ DEF];
current[ACC] = base[@ ACC];

is_ai=false;
is_ai1=false;

unit_name = "Майк"

unit_name_atk = "Майка"

spr_pr=spr_mike_inv;

var _layer = layer_create(obj_payer.depth);

switch(weapon)
{
	case "none":
	unit_sequence = layer_sequence_create(_layer,x,y,seq_mike_none);
	sprite_index=spr_mike_fight_1
	break;
	case "stick":
	sprite_index=spr_mike_fight
	unit_sequence = layer_sequence_create(_layer,x,y,seq_mike_stick);
	break;

}
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

learned_skill[0]= global.skill[skills.no_skill];
learned_skill[1]= global.skill[skills.no_skill];
learned_skill[2]= global.skill[skills.no_skill];
learned_skill[3] = global.skill[skills.no_skill];
learned_skill[4] = global.skill[skills.no_skill]
learned_skill[5] = global.skill[skills.no_skill];
learned_skill[6] = global.skill[skills.no_skill];
learned_skill[7] = global.skill[skills.no_skill];