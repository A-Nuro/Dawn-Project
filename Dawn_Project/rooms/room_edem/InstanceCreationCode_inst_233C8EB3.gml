talking=1;
text_id="tree_adam_0";
npc_id="tree_adam"
my_name="Адам?";
char_spr=edan_tree_1;
function  npc_doings()
{
_sequence = layer_sequence_create("Assets_1",x-55,y-4,seq_tree);
function  npc_doings()
{
if obj_payer.faza[0]<4 and layer_sequence_get_headpos(_sequence) >=120
{
layer_sequence_headpos(_sequence,0);
}
if obj_payer.faza[0]=4.1 and layer_sequence_get_headpos(_sequence) <120
{
layer_sequence_headpos(_sequence,120);
}
if obj_payer.faza[0]=4.1 and layer_sequence_get_headpos(_sequence) >= 359
{
layer_sequence_headpos(_sequence,240);
}
if obj_payer.faza[0]=4.2 and layer_sequence_get_headpos(_sequence) < 360
{
layer_sequence_headpos(_sequence,360);
}
if obj_payer.faza[0]=4.2 and layer_sequence_get_headpos(_sequence) >= 480
{
layer_sequence_headpos(_sequence,470);
}
if obj_payer.faza[0]>=4.3 and layer_sequence_get_headpos(_sequence) != 490
{
layer_sequence_headpos(_sequence,490);
}

}
}