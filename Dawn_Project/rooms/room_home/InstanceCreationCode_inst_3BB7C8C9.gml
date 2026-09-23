npc_id="masha"
char_spr=s_masha_sd;


function  npc_doings()
{
if (obj_payer.faza[0]=3 or obj_payer.faza[0]=3.1 or obj_payer.faza[0]=3.61) and obj_payer.faza[10]!="masha_left"
{x=245
y=145
}
if (obj_payer.faza[0]=3.33) x=-64
}
