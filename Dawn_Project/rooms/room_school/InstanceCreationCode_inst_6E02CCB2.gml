char_spr=s_andrew_sd;
talking=1;

function npc_doings()
{
if (obj_payer.faza[0]<=2) 
{
	text_id="andrew_1";
	if (obj_payer.faza[1]==0 or obj_payer.faza[1]==1.5) my_name="???";
	if (obj_payer.faza[1]==1) 
	{
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Андрей","Андрей");
	ini_close()
	}
}
if (obj_payer.faza[0]==3 or obj_payer.faza[0]==3.61) 
{
	
	id.x=-100;
}
if (obj_payer.faza[0]==3.5)
{	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Андрей","Андрей");
	ini_close();
	text_id="day3_andrew_0";
	id.x=28;
	id.y=200;
}
}
