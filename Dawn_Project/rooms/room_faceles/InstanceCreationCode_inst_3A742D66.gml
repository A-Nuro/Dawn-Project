npc_id="anna"
talking=1;
char_spr=s_anna_sd;
my_name="Аня";
function  npc_doings()
{
	
if (obj_payer.faza[0]=3.4 and obj_payer.y>=550)	
{obj_payer.fake_up=1;}
else
{obj_payer.fake_up=0;}
if (obj_payer.faza[0]=3.4 and obj_payer.x>=1000)	
{obj_payer.fake_left=1;}
else
{obj_payer.fake_left=0;}
if (obj_payer.faza[0]=3.5)	
{text_id="day2_faceless_anna";}
}