inst=0;
talking=1;
char_spr=spsd_statr;
function npc_doings()
{
if obj_payer.faza[0]=0.01 and !instance_exists(obj_b_mike_static)
{
	obj_payer.danger=true
	var _figh = instance_create_depth(x,y,obj_payer.depth+1,obj_b_mike_static)
	x=-99
}

}