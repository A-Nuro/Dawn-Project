char_spr=s__sd
my_name="[scale,0.3]Дверь";
function npc_doings(){
if obj_payer.faza[0]=3
{
talking=1;
text_id="home_masha0";	
}
else
{
talking=1;
/*
_room=room_room;
tp_x=303;
tp_y=285;
*/
text_id="my_home";	
}
}