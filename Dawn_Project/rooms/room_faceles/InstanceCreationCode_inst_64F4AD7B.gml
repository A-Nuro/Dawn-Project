depth=-9690
talking=1;

char_spr=s_faceless_sit;
function  npc_doings()
{
if (obj_payer.faza[0]=1.1)	
{
	text_id="home_make_faceless_1";
	my_name="???";
}	
if (obj_payer.faza[0]=3.5)	
{
	text_id="day2_faceless6";
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Безликий","Безликий");
	ini_close()
}

}