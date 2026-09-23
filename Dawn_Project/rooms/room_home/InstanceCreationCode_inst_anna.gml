npc_id="anna"
char_spr=s_anna_sd;
function  npc_doings()
{
if (obj_payer.faza[0]=0.1 and (obj_payer.faza[10]!="anna_left" and obj_payer.faza[10]!="anna_up"))
{x=275
y=255
}
if obj_payer.faza[0]=1
{x=-999
y=255
}
if (obj_payer.faza[0]=3.2  and (obj_payer.faza[10]!="anna_left" and obj_payer.faza[10]!="anna_up"))
{x=185
y=365
}
if ((obj_payer.faza[0]=3.3  or obj_payer.faza[0]=3 or obj_payer.faza[0]=3.61) and (obj_payer.faza[10]!="anna_left" and obj_payer.faza[10]!="anna_up"))
{x=185
y=240
}

}
