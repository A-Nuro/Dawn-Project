function new_save(_name)
{
if timer>0
timer--;
if timer<=0
{
scr_black(black_no,1.5);
audio_stop_all()
ini_open(_name);
ini_write_real("settings","player_x",206);
ini_write_real("settings","player_y",169);
for (var i = 1; i<array_length(global.main_quests);i++)
{
	ini_write_real("main_quest",i,0);
}
ini_write_real("faza","0",0);
ini_write_real("faza","1",0);
ini_write_real("faza","2",0);
ini_write_real("faza","3",0);
ini_write_real("faza","4",0);
ini_write_real("faza","5",0);
ini_write_real("faza","6",0);
ini_write_real("faza","7",0);
ini_write_real("faza","8",0);
ini_write_real("faza","9",0);
ini_write_string("faza","10",0);
ini_write_real("faza","11",0);
ini_write_real("settings","room",1);
ini_write_string("sound","0","Snd_Wind");
ini_write_string("settings","cloth","deff");
ini_write_string("settings","black","no_no");
ini_write_real("settings","black_",0);
ini_write_real("time","0",3);
ini_write_real("time","1",4);
for (var i = 0; i < INV_SLOTS; i++)
{
	ini_write_real("inventary",i,-1);
}
for (var i = 0; i<3;i++)
{
	ini_write_string("team",i,"");
	ini_write_real("hp",i,-1);
	ini_write_real("sp",i,-1);
}
obj_payer.playerx=300
obj_payer.playery=120
obj_payer.cloth="deff"
obj_payer.faza[0] = 0
obj_payer.faza[1] = 0
obj_payer.faza[2] = 0
obj_payer.faza[3] = 0
obj_payer.faza[4] = 0
obj_payer.faza[5] = 0
obj_payer.faza[6] = 0
obj_payer.faza[7] = 0
obj_payer.faza[8] = 0
obj_payer.faza[9] = 0
obj_payer.faza[10] = 0
obj_payer.faza[11] = 0
global.time=3
obj_time.time_change=4
for (var i = 0; i < INV_SLOTS; i++)
{	
	inst_my_best_inv.inventory[i].num=global.items[0].num;
	inst_my_best_inv.inventory[i].namein=global.items[0].namein;
	inst_my_best_inv.inventory[i].colvo=global.items[0].colvo;
	inst_my_best_inv.inventory[i].activ=global.items[0].activ;
	inst_my_best_inv.inventory[i].use_no_battle=global.items[0].use_no_battle;
	inst_my_best_inv.inventory[i].hp_change=global.items[0].hp_change;
	inst_my_best_inv.inventory[i].sp_change=global.items[0].sp_change;

}

for (var i = 0; i < INV_SLOTS; i++)
{
	ini_write_real("inventary",i,0);
}
for (var i = 0; i < INV_BOX_SLOTS; i++)
{
	ini_write_real("inventary_box",i,0);
}
for (var i = 0; i < INV_BOX_SLOTS; i++)
{
	inst_my_big_inv.inventory[i].num=global.items[0].num;
	inst_my_big_inv.inventory[i].namein=global.items[0].namein;
	inst_my_big_inv.inventory[i].colvo=global.items[0].colvo;
	inst_my_big_inv.inventory[i].activ=global.items[0].activ;
	inst_my_big_inv.inventory[i].use_no_battle=global.items[0].use_no_battle;
	inst_my_big_inv.inventory[i].hp_change=global.items[0].hp_change;
	inst_my_big_inv.inventory[i].sp_change=global.items[0].sp_change;
}
for (var i = 2; i<3;i++)
{
	obj_payer._hp[i]=-1
	obj_payer._sp[i]=-1
}
obj_payer._hp[0]=80
obj_payer._sp[0]=39
obj_payer._hp[1]=65
obj_payer._sp[1]=50
obj_payer._hp[2]=65
obj_payer._sp[2]=50
for (var i = 1; i<array_length(global.main_quests);i++)
{
	global.main_quests[i].status=0
	ini_write_real("main_quest",i,0);
}
ini_close()
obj_quests.active_quests=[]
global.team=[obj_b_player];
room_goto(room_nightmare);
obj_payer.x=300;
obj_payer.y=120;
global.save_slot=_name;
}
}

function load_save(_name)
{

if file_exists(_name)
{
if timer>0
{timer--;
}
if timer<=0
{
audio_stop_all()
ini_open(_name);
obj_payer.playerx=ini_read_real("settings","player_x",0);
obj_payer.playery=ini_read_real("settings","player_y",0);
obj_payer.cloth=ini_read_string("settings","cloth","deff");
obj_payer.your_room = ini_read_real("settings","room",_Room2);
obj_payer.faza[0] = ini_read_real("faza","0",0);
obj_payer.faza[1] = ini_read_real("faza","1",0);
obj_payer.faza[2] = ini_read_real("faza","2",0);
obj_payer.faza[3] = ini_read_real("faza","3",0);
obj_payer.faza[4] = ini_read_real("faza","4",0);
obj_payer.faza[5] = ini_read_real("faza","5",0);
obj_payer.faza[6] = ini_read_real("faza","6",0);
obj_payer.faza[7] = ini_read_real("faza","7",0);
obj_payer.faza[8] = ini_read_real("faza","8",0);
obj_payer.faza[9] = ini_read_real("faza","9",0);
obj_payer.faza[10] = ini_read_string("faza","10",0);
obj_payer.faza[11] = ini_read_real("faza","11",0);
global.time=ini_read_real("time","0",1);
obj_time.time_change=ini_read_real("time","1",1);
for (var i = 1; i<array_length(global.main_quests);i++)
{
	global.main_quests[i].status=ini_read_real("main_quest",i,0);
}
for (var i = 1; i<array_length(global.main_quests);i++)
{
	if global.main_quests[i].status=1 and array_get_index(obj_quests.active_quests,global.main_quests[i])==-1
	{
	array_push(obj_quests.active_quests,global.main_quests[i])	
	}
}
for (var i = 0; i < INV_SLOTS; i++)
{	if (ini_read_real("inventary",i,0)!=-1) 
	{
	inst_my_best_inv.inventory[i].num=global.items[ini_read_real("inventary",i,0)].num;
	inst_my_best_inv.inventory[i].namein=global.items[ini_read_real("inventary",i,0)].namein;
	inst_my_best_inv.inventory[i].colvo=global.items[ini_read_real("inventary",i,0)].colvo;
	inst_my_best_inv.inventory[i].activ=global.items[ini_read_real("inventary",i,0)].activ;
	inst_my_best_inv.inventory[i].use_no_battle=global.items[ini_read_real("inventary",i,0)].use_no_battle;
	inst_my_best_inv.inventory[i].hp_change=global.items[ini_read_real("inventary",i,0)].hp_change;
	inst_my_best_inv.inventory[i].sp_change=global.items[ini_read_real("inventary",i,0)].sp_change;
	}
}
for (var i = 0; i < INV_BOX_SLOTS; i++)
{	if (ini_read_real("inventary_box",i,0)!=-1) 
	{
	inst_my_big_inv.inventory[i].num=global.items[ini_read_real("inventary_box",i,0)].num;
	inst_my_big_inv.inventory[i].namein=global.items[ini_read_real("inventary_box",i,0)].namein;
	inst_my_big_inv.inventory[i].colvo=global.items[ini_read_real("inventary_box",i,0)].colvo;
	inst_my_big_inv.inventory[i].activ=global.items[ini_read_real("inventary_box",i,0)].activ;
	inst_my_big_inv.inventory[i].use_no_battle=global.items[ini_read_real("inventary_box",i,0)].use_no_battle;
	inst_my_big_inv.inventory[i].hp_change=global.items[ini_read_real("inventary_box",i,0)].hp_change;
	inst_my_big_inv.inventory[i].sp_change=global.items[ini_read_real("inventary_box",i,0)].sp_change;
	}
}
for (var i = 0; i<3;i++)
{
	if array_get_index(global.team,asset_get_index(ini_read_string("team",i,"")))==-1 and ini_read_string("team",i,"")!=""
	{
		array_push(global.team,asset_get_index(ini_read_string("team",i,"")))
	}
}
for (var i = 0; i<3;i++)
{
	obj_payer._hp[i]=ini_read_real("hp",i,-1)
	obj_payer._sp[i]=ini_read_real("sp",i,-1)
}
if ini_read_real("settings","black_",1)>1
{
scr_black(asset_get_index(ini_read_string("settings","black","no_no")),1)
}
else
{
scr_black(asset_get_index(ini_read_string("settings","black","no_no")),-1)	
}
;
var _sound = asset_get_index(string(ini_read_string("sound","0",_none)));
scr_sound_sette(1,_sound,true,0)
ini_close()
obj_payer.talk=0;
obj_payer.actions=0;
obj_payer.battle=0;
room_goto(obj_payer.your_room); 
obj_payer.x=obj_payer.playerx;
obj_payer.y=obj_payer.playery;
switch(obj_payer.cloth)
{
	case "deff": obj_payer.sprite_index=spgd_ break;
	case "school": obj_payer.sprite_index=spgd_s break;
	case "school_1": obj_payer.sprite_index=spgd_s_1 break;
}
global.save_slot=_name;
}
}	

}

function make_save(_name)
{
	ini_open(_name);

ini_write_real("settings","player_x",obj_payer.x);
ini_write_real("settings","player_y",obj_payer.y);
for (var i = 0; i<10;i++)
{
	ini_write_real("faza",i,obj_payer.faza[i]);
}

ini_write_string("faza","10",obj_payer.faza[10]);
ini_write_real("faza","11",obj_payer.faza[11]);
ini_write_real("settings","room",room);
ini_write_string("sound","0",obj_payer._song);
ini_write_string("settings","cloth",obj_payer.cloth);
ini_write_string("settings","black",sprite_get_name(obj_black.sprite_index));
ini_write_real("settings","black_",obj_black.image_index);
ini_write_real("time","0",global.time);
ini_write_real("time","1",obj_time.time_change);
for (var i = 1; i<array_length(global.main_quests);i++)
{
	ini_write_real("main_quest",i,global.main_quests[i].status);
}
for (var i = 0; i < INV_SLOTS; i++)
{
	ini_write_real("inventary",i,inst_my_best_inv.inventory[i].num);
}
for (var i = 0; i < INV_BOX_SLOTS; i++)
{
	ini_write_real("inventary_box",i,inst_my_big_inv.inventory[i].num);
}
for (var i = 0; i<array_length(global.team);i++)
{
	ini_write_string("team",i,object_get_name(global.team[i]));
}
for (var i = 0; i<3;i++)
{
	ini_write_real("hp",i,obj_payer._hp[i]);
	ini_write_real("sp",i,obj_payer._sp[i]);
}
ini_close()
}