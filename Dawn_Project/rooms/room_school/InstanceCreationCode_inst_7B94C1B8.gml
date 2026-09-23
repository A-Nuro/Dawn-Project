char_spr=s_nastya_sd
talking=1;

function npc_doings()
{
if (obj_payer.faza[0]==2) 
{
	text_id="nastya_1";
	if (obj_payer.faza[2]==0) my_name="???";
	if (obj_payer.faza[2]==1) 
	{
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Настя","Настя");
	ini_close()
	}
}	

if (obj_payer.faza[0]==3 or obj_payer.faza[0]==3.61) id.x=-100;

if (obj_payer.faza[0]=3.5) 
{
	id.x=414;
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Настя","Настя");
	ini_close()
	text_id="day3_nastya_0";
}
}