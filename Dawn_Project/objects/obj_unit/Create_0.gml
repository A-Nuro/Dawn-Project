function ai_doings()
{

}
#macro HP 0
#macro SP 1
#macro SPEED 2
#macro ATK 3
#macro DEF 4
#macro ACC 5
#macro DEF_R 6
#macro DEF_O 7
#macro DEF_Y 8
#macro DEF_G 9
#macro DEF_B 10
#macro DEF_P 11

inst=false;

#macro IDLE 0
#macro ATTACK 1
#macro TO_BLOCK 2
#macro BLOCK 3
#macro CAST 4
#macro HURT 5
#macro MISS 6
#macro DEATH 7
#macro BLOCK_HURT 8
#macro BLOCK_MISS 9
#macro IDLE1 10
#macro NO_THING 11
#macro DEATH_HURT 7
need_to_hurt = false;

check=false;

our=true
is_atk=false

weapon = "none";
def_spr = spr_mike_fight_1
atk_spr = spr_mike_attack_1;
atk_hitbox = spr_mike_attack_hit;

xp_get = 10;
alp=1;
is_ai=false;
is_ai1=false;
what_to_do=-1;
death_start = 0;
multi_draw = false;
int=false;

hit_by_attack = ds_list_create();

back_hurts=false
/*
if x < room_width/2
{
team = 1
}
else
{
team = 2
}
*/
state = IDLE;

unit_name = ""

unit_post_name = ""

unit_name_atk = ""

idle_anim=-1;

base[HP] = 20;
base[SP] = 10;
base[SPEED] = irandom_range(1,10);
base[ATK] = 4;
base[DEF] = 2;
base[ACC] = 0.1;

base[DEF_R] = 1;
base[DEF_O] = 1;
base[DEF_Y] = 1;
base[DEF_G] = 1;
base[DEF_B] = 1;
base[DEF_P] = 1;

current[HP] = base[@ HP];
current[SP] = base[@ SP];
current[SPEED] = base[@ SPEED];
current[ATK] = base[@ ATK];
current[DEF] = base[@ DEF];
current[ACC] = base[@ ACC];

turn_finished = false;
selected = false;
incoming_damage = 0;
/*
str_pos=0;
cur_pos=0;
ignore_pos=false;
*/
ignore_def=false;
ignore_rand=false;
ignore_block=false;

d_cur_pos=false;
/*
rev=false;
q_imit=false;
e_imit=false;
*/
spr_pr=no_no;

draw_anim = true;
hp_bar_width = sprite_get_width(ui_hp);
hp_bar_height = sprite_get_height(ui_hp);

talk_when_die="";

talk_when_hp="";
talk_when_hp_at=0;
draw_target = false;
defending = false;

function use_skill_points(_amount)
{
	current[SP] -= _amount;	
	if _amount!=0
	{
	var _dmg = instance_create_depth(x+32,y+32,depth-1,dmg_num)
	_dmg.is_hp=false
	_dmg.num_dmg=_amount
	}
}
learned_skill[0] = -1;
learned_skill[1] = -1;
learned_skill[2] = -1;
learned_skill[3] = -1;
learned_skill[4] = -1;
learned_skill[5] = -1;
learned_skill[6] = -1;
learned_skill[7] = -1;

eff_need_change=-1;
active_effects=[];
//tapes
effects[0] = 
{
	turns: 4,
	turns_remind: 0,
	active: false,
	words: "Данный персонаж скован лентами",
    act: function(){if obj_payer._talk_what!="first_fight_1" and obj_payer._talk_what!="first_fight_2" and obj_payer._talk_what!="first_fight_3" and obj_payer._talk_what!="first_fight_4"{is_ai1=false}}
}
//damage up
effects[1] = 
{
	turns: 4,
	turns_remind: 0,
	active: false,
	words: "",
    act: function(){ current[@ ATK] =irandom_range(base[@ ATK]*1.17,base[@ ATK]*1.43)}
}
//damage down
effects[2] = 
{
	turns: 4,
	turns_remind: 0,
	active: false,
	words: "",
	act: function(){ current[@ ATK] =irandom_range(base[@ ATK]*0.63,base[@ ATK]*0.77)}
}

selected_skill = -1;

function damage_unit(_amount,_def,_rand)
{
	if (_def == true) var __def = 1
	else __def = current[@ DEF]/10
	
	if (_rand == true) var __amount = _amount
	else __amount = irandom_range(_amount*0.9,_amount*1.1)
	
	var _damage = __amount/__def;
	if _amount>0
	{
	if global.selected_unit.selected_skill == -1 or global.selected_unit.selected_skill.type = skill_type.physic
	{
	current[@ HP] -=  ceil(max(1,_damage));
	if ceil(max(1,_damage))!=0
	{
	var _dmg = instance_create_depth(x+32,y+32,depth-1,dmg_num)
	_dmg.is_hp=true
	_dmg.num_dmg=ceil(max(1,_damage))
	}
	}
	else
	{
	current[@ HP] -= ceil(_amount);
	if ceil(_amount)!=0
	{
	var _dmg = instance_create_depth(x+32,y+32,depth-1,dmg_num)
	_dmg.is_hp=true
	_dmg.num_dmg=ceil(_amount)
	}
	}
	}
	else
	{
	current[@ HP] -= floor(_amount);
	if floor(_amount)!=0
	{
	var _dmg = instance_create_depth(x+32,y+32,depth-1,dmg_num)
	_dmg.is_hp=true
	_dmg.num_dmg=floor(_amount)
	}
	}
}

function change_eff(_what)
{
effects[_what].active=true;
effects[_what].turns_remind=0;
}
/*
switch (x)
{
	case 96: cur_pos=1 break;
	case 192: cur_pos=2 break;
	case 288: cur_pos=3 break;
	case 384: cur_pos=4 break;
	case 480: cur_pos=5 break;
	case 576: cur_pos=6 break;
}

str_pos=cur_pos;