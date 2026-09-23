inv_hover = obj_inv_mouse.inv_hover
slot_hover = obj_inv_mouse.slot_hover 
inv_drag = obj_inv_mouse.inv_drag
slot_drag = obj_inv_mouse.slot_drag
item_drag = obj_inv_mouse.item_drag



if inventory[0].namein!="" or inventory[1].namein!="" or inventory[2].namein!="" or inventory[3].namein!="" or inventory[4].namein!="" or inventory[5].namein!="" or inventory[6].namein!="" or inventory[7].namein!="" or inventory[8].namein!=""
{
	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.16//-102;
	y=camera_get_view_y(view_camera[0])+95;		
}
else
{
x=camera_get_view_x(view_camera[0])-32*32;
y=camera_get_view_y(view_camera[0]);
}


depth=obj_inventory.depth-1	




if inst_my_best_inv.inv_active=false
{
	inv_active=false
}

if inst_my_best_inv.inv_active==true
{
	inv_active=true
}


for (var i = 0; i < INV_GIVE_SLOTS; i++)
{
	if inventory[i].num==0 inv_remove(id,0)
}