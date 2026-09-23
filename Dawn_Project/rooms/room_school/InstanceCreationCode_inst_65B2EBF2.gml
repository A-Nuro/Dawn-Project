npc_id="anna";
text_id="anna_school_1";

function follower_doings()
{
if (obj_payer.faza[0]==3) or (obj_payer.faza[0]==3.5) or (obj_payer.faza[0]==3.61)
{
	instance_destroy();
}
}
