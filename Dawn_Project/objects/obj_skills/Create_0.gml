/*
enum skill_stat
{
name,
type,
feeling,
target,
hp_change,
cost,
action
}
*/
enum skill_type
{
physic,
magic_buff,
magic_debuff,
buff,
debuff
}

enum skill_feeling
{
none,

}

enum skills
{
no_skill,
slash,
multi_slash,
heal,
dmg_up,
dmg_down_fear,
no_act,
heal_with_dmg_down,
jusice_slash
}

enum react
{
buff,
debuff,
hurt,
no_react
}

skill = function(_name, _type, _react, _feeling, _hp_change, _cost, _action, _des, _doing) constructor {
	name = _name;
	type = _type;
	reaction = _react;
	feeling = _feeling;
	hp_change = _hp_change;
	cost = _cost;
	action = _action;
	des = _des
	doing = _doing
}
global.skill[skills.no_skill] = new skill("", skill_type.physic, react.hurt, skill_feeling.none, 0, 0, single_target_attack,"", function(){})

global.skill[skills.no_act] = new skill("", skill_type.physic, react.hurt, skill_feeling.none, 0, 0, single_target_attack,"", function(){})

global.skill[skills.slash] = new skill("Слэш", skill_type.physic, react.hurt,  skill_feeling.none, 99, 1, single_target_attack,"Мощный удар по одной цели [no_no,0,0] 1[nbsp]SP",
function(){damage_unit(30,false,false,false)});

global.skill[skills.multi_slash] = new skill("Мулти-Слэш", skill_type.physic, react.hurt, skill_feeling.none, 6, 2, multi_target_team_attack,"Мощный удар по всем целям [no_no,0,0] 2[nbsp]SP",
function(){
damage_unit(6,false,false,false)
}
);
global.skill[skills.heal] = new skill("Лечение", skill_type.buff, react.buff, skill_feeling.none, -40, 6, single_target_attack,"Слабое востановление здоровья 6[nbsp]SP",
function(){
damage_unit(-40,true,true,false)}
);
global.skill[skills.heal_with_dmg_down] = new skill("Лечение2", skill_type.physic, react.buff, skill_feeling.none, 0, 4, single_target_attack,"Слабое востановление здоровья 4[nbsp]SP",
function(){
//eff_need_change=1;
effects[2].active=true;
effects[2].turns_remind=0;
effects[1].active=false;
effects[1].turns_remind=0;
damage_unit(-5,true,true,false)

}
);
global.skill[skills.dmg_up] = new skill("Форта", skill_type.physic, react.buff, skill_feeling.none, 0, 3, multi_target_all_attack ,"Слабое увеличение урона",
function(){
for (var i =0; i<ds_list_size(global.selected_targets);i++)
{
if ds_list_find_index(global.good_team,global.selected_targets[|i])!=-1
{
	with (global.selected_targets[|i])
	{
effects[1].active=true;
effects[1].turns_remind=0;
effects[2].active=false;
effects[2].turns_remind=0;
	}
}
else
{
	with (global.selected_targets[|i])
	{
effects[2].active=true;
effects[2].turns_remind=0;
effects[1].active=false;
effects[1].turns_remind=0;
	}
}
}
}
);

global.skill[skills.dmg_down_fear] = new skill("Жуткий крик", skill_type.physic, react.debuff, skill_feeling.none, 0, 3, multi_target_team_attack ,"Слабое увеличение урона",
function(){
for (var i =0; i<ds_list_size(global.selected_targets);i++)
{


	with (global.selected_targets[|i])
	{
effects[2].active=true;
effects[2].turns_remind=0;
effects[1].active=false;
effects[1].turns_remind=0;
	}

}
}
);
/*
global.skill[skills.multi_slash] = new skill("Multi-Slash", skill_type.physic, skill_feeling.none, 6, 2, multi_target_all_attack,"Мощный удар по всем целям (2ㅤSP)",
function(){
	if id == global.selected_unit
	{
	damage_unit(4,false,false,false)
	}
	else
	{
	damage_unit(6,false,false,false)
	}
}
);
*/