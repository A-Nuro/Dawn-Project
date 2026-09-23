inst=0;
talking=1;
function npc_doings()
{
if (obj_payer.faza[0]!=0.01) char_spr=spsd_stat;
else
{
	if y<=obj_payer.y-40
	{
	char_spr=spgd_stat;
	y+=1.5;
	}
inst_739651D4.x=obj_payer.x
inst_739651D4.y=obj_payer.y+10
}

}