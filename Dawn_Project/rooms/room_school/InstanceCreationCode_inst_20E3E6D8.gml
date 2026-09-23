
char_spr=s_anna_sd;
talking=1;

function npc_doings()
{
if (obj_payer.faza[0]==3.5 and obj_payer.faza[1]==1 and obj_payer.faza[2]==1 and obj_payer.faza[3]==1) 
{
inst=1;
text_id="day3_anna_0";
}
if (obj_payer.faza[0]==3.61) 
{
x=65;
}
}