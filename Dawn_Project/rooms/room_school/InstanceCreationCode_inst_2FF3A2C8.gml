talking=1
char_spr=s__sd;
my_name="Дверь";
function npc_doings()
{
if (obj_payer.faza[0]=3) 
{
	
	text_id="door_school1";
}
else
{	
	text_id="door_school";
}
}