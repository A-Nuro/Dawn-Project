npc_id="adam_soul";
talking=1;
char_spr=s_edan_sd1;
my_name="Душа Адама";
text_id=" ";
//depth=-9997
function npc_doings()
{

if (obj_payer.faza[0]=4.3 or obj_payer.faza[0]=4.4)	
{
x=1000;
y=425;
}

if (obj_payer.faza[0]>=4.5)	
{
x=900;
y=170;
}

if obj_payer.faza[11]=24
{
inst=1;
talking=1;
text_id="tree_adam_7.4";
obj_payer.faza[11]=1
}
}