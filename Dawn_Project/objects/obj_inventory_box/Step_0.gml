inv_hover = obj_inv_mouse.inv_hover
slot_hover = obj_inv_mouse.slot_hover 
inv_drag = obj_inv_mouse.inv_drag
slot_drag = obj_inv_mouse.slot_drag
item_drag = obj_inv_mouse.item_drag
depth=-9998


if inv_active == true
{
	if inst_my_best_inv.inv_open_with_phone==false and inv_active_box==true and obj_inventory_give.y<=camera_get_view_y(view_camera[0])+10
	{
	x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.666//-102;
	y=camera_get_view_y(view_camera[0])+85;		
	}
	else
	{
	x=camera_get_view_x(view_camera[0])-32*32;
	y=camera_get_view_y(view_camera[0]);	
	}
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
	inv_active_box=false
}
if inst_my_best_inv.inv_active==true
{
	inv_active=true
}

if inv_active==false
{
	obj_inv_mouse.state = obj_inv_mouse.state_free;
	item_drag = -1;
	inv_drag = -1;
	slot_drag = -1;
}

for (var i = 0; i < INV_BOX_SLOTS; i++)
{
	if inventory[i].num==0 inv_remove(id,0)
}