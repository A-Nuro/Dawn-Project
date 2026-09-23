char_spr=s_edan_sd
talking=1;
text_id="edan_1";

function npc_doings()
{
	
if (obj_payer.faza[4]==0) my_name="???";
if (obj_payer.faza[4]==1) 
{
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Адам","Адам");
	ini_close()
}
if (obj_payer.faza[0]==3 or obj_payer.faza[0]==3.5 or obj_payer.faza[0]==3.61) id.x=-100;
}