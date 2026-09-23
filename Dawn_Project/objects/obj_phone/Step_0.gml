camera_width=camera_get_view_width(view_camera[0])
camera_height=camera_get_view_height(view_camera[0])
x = camera_get_view_x(view_camera[0])+(camera_width-sprite_width)/2;
y = camera_get_view_y(view_camera[0])+(camera_height-sprite_height)/2;
depth=-9999;
if global.dev==1
{
	for (var g = 0; g< gamepad_get_device_count(); g++)
	{
		if gamepad_is_connected(g) var _esc = gamepad_button_check_pressed(g,gp_start)
	}
}
else
{
	var _esc = keyboard_check_pressed(vk_escape)
}

if t_phone=0
{
pos=-1
pos1=-1
}
if (cur_mouse_x!=mouse_x or cur_mouse_y!=mouse_y) and obj_inventory.inv_active=false
{
	//global.dev=0;
	cur_mouse_x=mouse_x;
	cur_mouse_y=mouse_y;
	is_mouse=true;
}
if t_phone=1 and t_phone_app=1
{
if (_esc or (os_type = os_android and mouse_x<camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+16 and mouse_x>camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-16 and mouse_y<camera_get_view_y(view_camera[0])+42 and mouse_check_button_pressed(mb_left))) and pos!=-1 and pos1!=-1 
{
	t_phone=0 
	menu_level = 0;
}
if global.dev=0 or global.dev=2
{
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
left_key = keyboard_check_pressed(vk_left);
right_key = keyboard_check_pressed(vk_right);
enter_key = keyboard_check_pressed(vk_enter);
var left_key1 = keyboard_check(vk_left)
var right_key1 = keyboard_check(vk_right);
}
else
{
	for (var g = 0; g< gamepad_get_device_count(); g++)
	{
		if gamepad_is_connected(g)
		{
		up_key = gamepad_button_check_pressed(g,gp_padu);
		down_key = gamepad_button_check_pressed(g,gp_padd);
		left_key = gamepad_button_check_pressed(g,gp_padl);
		right_key = gamepad_button_check_pressed(g,gp_padr);
		var left_key1 = gamepad_button_check(g,gp_padl);
		var right_key1 = gamepad_button_check(g,gp_padr);
		enter_key = gamepad_button_check_pressed(g,gp_face1);
		}
	}
}

//op_lenght = array_length(m_option[menu_level]);

if up_key or down_key or left_key or right_key or enter_key
{
	is_mouse=false;
}

if mouse_x>x+13 and mouse_x<x+141 and mouse_y>y+44 and mouse_y<y+190 and is_mouse=true
{
if mouse_x>x+13 and mouse_x<x+45
{
	if mouse_y>y+44 and mouse_y<y+76 
	{pos=0; pos1=0;}
	if mouse_y>y+101 and mouse_y<y+133 
	{pos=1; pos1=0;}
	if mouse_y>y+158 and mouse_y<y+190 
	{pos=2; pos1=0;}
}
if mouse_x>x+61 and mouse_x<x+93
{
	if mouse_y>y+44 and mouse_y<y+76 
	{pos=0; pos1=1;}
	if mouse_y>y+101 and mouse_y<y+133 
	{pos=1; pos1=1;}
	if mouse_y>y+158 and mouse_y<y+190 
	{pos=2; pos1=1;}
}
if mouse_x>x+109 and mouse_x<x+141
{
	if mouse_y>y+44 and mouse_y<y+76 
	{pos=0; pos1=2;}
	if mouse_y>y+101 and mouse_y<y+133 
	{pos=1; pos1=2;}
	if mouse_y>y+158 and mouse_y<y+190 
	{pos=2; pos1=2;}
}
}


pos += down_key - up_key;
pos1 += right_key - left_key;


switch(menu_level)
{
	case 0:
	if pos >= 3 pos=0;
	if pos < 0 pos=2;
	if pos1 >= 3 pos1=0;
	if pos1 < 0 pos1=2;
	break;
	case 1:
	if pos >= 3 pos=2;
	if pos < 2 pos=2;
	if pos1 >= 3 pos1=0;
	if pos1 < 0 pos1=2;
	if pos1==1 and (keyboard_check(vk_right) or right_key1) pos1=2
	if pos1==1 and (keyboard_check(vk_left) or left_key1) pos1=0
	if pos1==1 and !(keyboard_check(vk_right) or right_key1) and !(keyboard_check(vk_left) or left_key1) pos1=2
	case 2:
	if pos >= 3 pos=0;
	if pos < 0 pos=2;
	if pos1 >= 3 pos1=0;
	if pos1 < 0 pos1=2;
	break;
	case 3:
	if pos >= 3 pos=0;
	if pos < 0 pos=2;
	if pos1 >= 3 pos1=0;
	if pos1 < 0 pos1=2;
	break;
}
if screen>1
{screen=0}
if screen=0
{window_set_fullscreen(true);}
else
{window_set_fullscreen(false);}

if (enter_key or (((mouse_x>x+13 and mouse_x<x+45 and mouse_y>y+44 and mouse_y<y+76) or (mouse_x>x+61 and mouse_x<x+93 and mouse_y>y+44 and mouse_y<y+76) or (mouse_x>x+109 and mouse_x<x+141 and mouse_y>y+44 and mouse_y<y+76) or (mouse_x>x+13 and mouse_x<x+45 and mouse_y>y+101 and mouse_y<y+133) or (mouse_x>x+61 and mouse_x<x+93 and mouse_y>y+101 and mouse_y<y+133) or (mouse_x>x+109 and mouse_x<x+141 and mouse_y>y+101 and mouse_y<y+133) or (mouse_x>x+13 and mouse_x<x+45 and mouse_y>y+158 and mouse_y<y+190) or (mouse_x>x+61 and mouse_x<x+93 and mouse_y>y+158 and mouse_y<y+190) or (mouse_x>x+109 and mouse_x<x+141 and mouse_y>y+158 and mouse_y<y+190)) and mouse_check_button_released(mb_left) )){
	
switch(menu_level)
{
case 0:
switch(pos1)
{
	case 0:
	switch(pos)
	{
	case 0: break;
	case 1: menu_level = 3; break;
	case 2: menu_level = 2; break;
	}
	break;
	case 1:
	switch(pos)
	{
	case 0: break;
	case 1: inst_my_best_inv.inv_active=true; inst_my_best_inv.inv_open_with_phone=true; t_phone=0; break;
	case 2: menu_level = 1; break;
	}
	break;
	case 2:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2: obj_saves.savekey=1 break;
	}
	break;
}
break
case 1:
switch(pos1)
{
	case 0:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2:  	
	obj_payer.x=-64
	obj_payer.y=-64
	obj_payer.actions=1;
	room_goto(Main_menu);
	scr_black(no_no,1);
	obj_pic.picture=no_no;
	menu_level = 0;
	t_phone=0;
	 break;
	}
	break;
	case 1:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2: break;
	}
	break;
	case 2:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2: menu_level = 0; break;
	}
	break;
}
break
case 2:
switch(pos1)
{
	case 0:
	switch(pos)
	{
	case 0: screen+=1; break;
	case 1: break;
	case 2: break;
	}
	break;
	case 1:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2: menu_level = 0; break;
	}
	break;
	case 2:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2: break;
	}
	break;
}
break
case 3:
switch(pos1)
{
	case 0:
	switch(pos)
	{
	case 0: if (array_get_index(global.team,obj_b_anna)==-1) array_push(global.team,obj_b_anna); else array_delete(global.team,array_get_index(global.team,obj_b_anna),1); break;
	case 1: break;
	case 2: menu_level = 2; break;
	}
	break;
	case 1:
	switch(pos)
	{
	case 0: if (array_get_index(global.team,obj_b_anna)==-1) array_push(global.team,obj_b_anna); else array_delete(global.team,array_get_index(global.team,obj_b_anna),1); break;
	case 1: inst_my_best_inv.inv_active=true; inst_my_best_inv.inv_open_with_phone=true; t_phone=0; break;
	case 2: menu_level = 1; break;
	}
	break;
	case 2:
	switch(pos)
	{
	case 0: break;
	case 1: break;
	case 2: obj_saves.savekey=1 break;
	}
	break;
}
break
}
/*	
switch (menu_level)
{
	case 0:
switch(pos){
	
case 0: t_phone=0; break;
case 1: menu_level = 1 ; break;
case 2: obj_saves.savekey=1 ; break;
case 3: menu_level = 2 ;

break;
}
break;

	case 1: 
	switch(pos){
		
	case 0: screen+=1;  break;
	case 1:  break;
	case 2:  break;
	case 3:  menu_level=0; break;
	
	}
	break;
	
	case 2:
	switch(pos){
	
case 0: menu_level = 0; break;
case 1: 
obj_payer.x=-64
obj_payer.y=-64
obj_payer.actions=1;
room_goto(Main_menu);
scr_black(no_no,1);
obj_pic.picture=no_no;
t_phone=0;
break;
	}
	break;
	
}
*/

//op_lenght = array_length(m_option[menu_level]);
}


}
