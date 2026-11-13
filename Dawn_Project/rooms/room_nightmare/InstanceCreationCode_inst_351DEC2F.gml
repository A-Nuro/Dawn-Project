inst=0;
talking=0;
text_id="First talk2";
my_name="Дверь"
char_spr=s__sd;
click=1;

function npc_doings()
{
if (array_length(global.team)>0 and instance_exists(obj_b_player)) if (global.team[0].current[@ HP]<=1){
	obj_payer.danger=false
	x=obj_payer.x
	y=obj_payer.y
}
}

