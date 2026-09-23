if os_type = os_android global.dev=2;
else global.dev=0;

danger=false
atk=false
def=false

stop_x=0
stop_y=0
air_alp=0;
phone_walk=false;
Right = false;
Left = false;
Up = false;
Down = false;
andr_shift = 0;
_will_talk=false;
_talk_turn=0;
_talk_what="";
need_to_rumble=false;
global.team=[obj_b_player];
global.playable_units=[obj_b_player,obj_b_anna];
unit_lvl[0]=0;
unit_xp[0]=0;

back_room=room_home;
not_live=[];
skip_time=0;
skip_key=0;
skip_active=0;
moment_skip=0;
array_follow=70;
after_fight_do=noone
for (var i = array_follow-1; i >=0; i--){
	
	follow_x[i] = x
	follow_y[i] = y
	follow_sprite[i] = obj_payer.sprite_index
	follow_image[i] = 0
}
sound_off=0

_song="_none";
_tim=0

_hp[0]=80;
_hp[1]=-1;
_hp[2]=-1;
_hp[3]=-1;

_sp[0]=40;
_sp[1]=-1;
_sp[2]=-1;
_sp[3]=-1;
/*
for (var i =0; i<array_length(global.inventory); i ++)
{
_times[i]=global.inventory[i].times;	
}
*/
fake_down=0;
fake_up=0;
fake_left=0;
fake_right=0;
nps=0;
cloth="deff"
playerx=0;
playery=0;
_snd=noone
for (var i=0; i<12; i+=1)
{
faza[i]=0;
}
your_room=room_nightmare;
depth=-9990
talk=0;
battle=0;
actions=0;
lang=0;
moveSpeed=3;
moveMoreSpeed=1;
phy_fixed_rotation=true;
air=300;
moveOk=0;
airLim=300;
walk_snd=1;
run_snd=1;
battle_bg=no_no
global.evil_team=[]

Gp_padr = gamepad_button_check(0,gp_padr);
Gp_padl = gamepad_button_check(0,gp_padl);
Gp_padu = gamepad_button_check(0,gp_padu);
Gp_padd = gamepad_button_check(0,gp_padd);
Gp_a = gamepad_button_check(0,gp_face1);
Gp_b = gamepad_button_check(0,gp_face2);
Gp_x = gamepad_button_check(0,gp_face3);
Gp_y = gamepad_button_check(0,gp_face4);
Gp_stickh = gamepad_axis_value(0,gp_axislh);
Gp_stickv = gamepad_axis_value(0,gp_axislv);
Gp_stickl = gamepad_button_check_pressed(0,gp_stickl);
Gp_con = gamepad_is_connected(0);
Gp_that_con = 0;
Gp_r1 = gamepad_button_check_pressed(0,gp_shoulderl);
Gp_r2 = gamepad_button_check(0,gp_shoulderrb);
Gp_start = gamepad_button_check_pressed(0,gp_start);
Gp_select = gamepad_button_check_pressed(0,gp_select);

Gp_padr_cl = gamepad_button_check_pressed(0,gp_padr);
Gp_padl_cl = gamepad_button_check_pressed(0,gp_padl);
Gp_padu_cl = gamepad_button_check_pressed(0,gp_padu);
Gp_padd_cl = gamepad_button_check_pressed(0,gp_padd);
Gp_a_cl = gamepad_button_check_pressed(0,gp_face1);
Gp_b_cl = gamepad_button_check_pressed(0,gp_face2);
Gp_x_cl = gamepad_button_check_pressed(0,gp_face3);
Gp_y_cl = gamepad_button_check_pressed(0,gp_face4);

