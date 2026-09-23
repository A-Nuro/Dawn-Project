npc_id="anna"
talking=1;
char_spr=s_anna_su;
my_name="Аня";
text_id="tree_adam_anna"
function  npc_doings()
{
	

if (obj_payer.faza[0]=3.62)	
{
x=1016;
y=450;}

if obj_payer.faza[0]=4.4 and obj_payer.phy_position_x<960
{obj_payer.fake_right=1;}
else obj_payer.fake_right=0;

//if sprite_index==s_anna_gl_tapes and image_index>=12 image_index=12;
}