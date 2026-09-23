talking=1;
text_id="car_sasha";
npc_id="sasha"
ini_open("character.name")

my_name=ini_read_string(global.lang,"Александр","Александр");
ini_close()
char_spr=s_sasha_gd;
function npc_doings()
{
if !audio_is_playing(Snd_walk_ground) and y<156 and y>30
{
	audio_play_sound(Snd_walk_ground,1,true)
}
if obj_payer.faza[0]=0.1
{
y=156;
}
if obj_payer.faza[10]=="sasha_down_no" and obj_payer.faza[0]!=0.1
{
if (y<obj_payer.y-20) obj_payer.sprite_index=spsu_;
if (y>=obj_payer.y-20) obj_payer.sprite_index=spsl_;
}
}