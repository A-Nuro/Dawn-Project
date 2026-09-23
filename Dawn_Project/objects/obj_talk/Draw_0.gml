draw_self();




if image_index>=5
{
	scribble(nameing).starting_format("Font_main").draw(x+1,y-1);
}



if image_index>=12
{
image_speed=-1;
}
if image_index<=1 or obj_payer.actions==1
{
instance_destroy();
}


