char_spr=s_zhenya_sd;
npc_id="zhenya";
talking=1;
function npc_doings()
{
if 	(obj_payer.faza[8]=1 and obj_payer.phy_position_y<=295) 
{
	obj_payer.fake_up=0;
}
if (obj_payer.faza[0]==2) 
{
	text_id="zhenya_1";
	if (obj_payer.faza[3]==0) my_name="???";
	if (obj_payer.faza[3]==1) 
	{
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Женя","Женя");
	ini_close()
	}
}

if (obj_payer.faza[0]==3) 
{
	text_id="zhenya_2";
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Женя","Женя");
	ini_close()
}


if (obj_payer.faza[0]==3.5)
{
	text_id="day3_zhenya_0";
	ini_open("character.name")
	my_name=ini_read_string(global.lang,"Женя","Женя");
	ini_close()

}

if (obj_payer.faza[0]==3.61) x=-100;
}