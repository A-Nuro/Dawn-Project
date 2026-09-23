inst=0;
talking=0;
text_id="first door";
my_name="Дверь"
char_spr=s__sd;
tp_x=300;
tp_y=830;
_room=room_nightmare;//for_tests;
function npc_doings()
{
if global.dev=1
{

if gamepad_is_connected(gpl()) var ok = gamepad_button_check_pressed(gpl(),gp_face1);

}
else var ok = keyboard_check_pressed(ord("E"));

if obj_payer.faza[0]=0
{
scr_sound_sette(1,Sng_Where_am_I,true,0);
/*	
talking=1;
text_id="First talk1";
*/
obj_payer.sprite_index=spwa;
obj_payer.image_speed=1;

if (obj_payer.image_index>=19) obj_payer.faza[0]=0.112;
}
if (obj_payer.faza[0]<0.01) obj_payer.moveOk=1;


//(obj_payer.sprite_index==spgd_ or obj_payer.sprite_index==spgu_ or obj_payer.sprite_index==spgl_ or obj_payer.sprite_index==spgr_)

}

