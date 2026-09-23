//state();
inv_hover = obj_inv_mouse.inv_hover
slot_hover = obj_inv_mouse.slot_hover 
inv_drag = obj_inv_mouse.inv_drag
slot_drag = obj_inv_mouse.slot_drag
item_drag = obj_inv_mouse.item_drag
depth=-9997
if (inv_active==true and id==inst_my_best_inv and x<camera_get_view_x(view_camera[0])) display_mouse_set(display_get_width()/2,display_get_height()/4);	



if id=inst_my_best_inv
{
if inv_active == true
{
if room==room_fight
{
x=camera_get_view_x(view_camera[0])+20;
y=camera_get_view_y(view_camera[0])+20;	
}
else
{
x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-102;
y=camera_get_view_y(view_camera[0])+40;	

if os_type == os_android and (mouse_x>x+12+row_length*32 or mouse_x<x or mouse_y>y+12+(((INV_SLOTS-1) div row_length)+1)*32 or mouse_y<y) and mouse_check_button_pressed(mb_left) inv_active=false
}

}
else
{
x=camera_get_view_x(view_camera[0])-999;
y=camera_get_view_y(view_camera[0]);
}
}

depth=obj_black.depth-1	

if global.dev=1
{

if gamepad_is_connected(gpl()) 
{
var esk = gamepad_button_check_pressed(gpl(),gp_start) or gamepad_button_check_pressed(gpl(),gp_select) or gamepad_button_check_pressed(gpl(),gp_face2)
}
	

}
else
{
	var esk = keyboard_check_pressed(vk_escape)
}


if room!=Main_menu and room!=room_fight and (esk or (obj_inventory_give.y<=camera_get_view_y(view_camera[0])+10 and instance_exists(obj_textbox) and obj_inventory_box.inv_active_box==false))and inv_active=true and obj_phone.t_phone==0
{
	inv_active=false
	if inv_open_with_phone==true obj_phone.t_phone=1
}

if inv_active==false
{
	obj_inv_mouse.state = obj_inv_mouse.state_free;
	item_drag = -1;
	inv_drag = -1;
	slot_drag = -1;
	inv_open_with_phone=false 
	if (obj_inventory_give.y>camera_get_view_y(view_camera[0])+10) inv_active=true
}

for (var i = 0; i < INV_SLOTS; i++)
{
	if inventory[i].num==0 inv_remove(id,0)
}

if inv_active==true
{

		var stick_h = obj_payer.Gp_stickh;
		var stick_v = obj_payer.Gp_stickv;

	if (stick_v<0.3 and stick_v>-0.3) stick_v=0;
	if (stick_h<0.3 and stick_h>-0.3) stick_h=0;
	if obj_payer.Gp_con 
	{
	display_mouse_set(display_mouse_get_x()+stick_h*6+obj_payer.Gp_padr*4-obj_payer.Gp_padl*4,display_mouse_get_y()+stick_v*6-obj_payer.Gp_padu*4+obj_payer.Gp_padd*4);
	}
}