//camera_set_view_pos(view_camera[0],floor(camera_get_view_x(view_camera[0])),floor(camera_get_view_y(view_camera[0])))

var cam = view_get_camera(0);
var iscl=display_get_width()/display_get_height()
if room!=room_fight
{
surface_resize(application_surface,display_get_width(),display_get_height())
camera_set_view_size(cam,640,640/iscl)
if (room_width==640 and room_height==500)
{
	if display_get_width()/display_get_height()>16/9
	{
		//бардюры побокам
		
		if camera_get_view_y(cam)+camera_get_view_height(cam)>360
			camera_set_view_border(cam,640/2,0)
			
		if obj_payer.phy_position_y-camera_get_view_y(cam)<(640/iscl)/2
			camera_set_view_border(cam,640/2,(640/iscl)/2)
	}
	else
	{
		camera_set_view_speed(cam,0,0)
	}
}
else
{
	camera_set_view_speed(cam,-1,-1)
	camera_set_view_border(cam,640/2,(640/iscl)/2)
}
}
else
{
//camera_set_view_size(cam,640,360)
//surface_resize(application_surface, 1600, 900)
}

if instance_exists(obj_textbox)
{
if obj_textbox.reacting[obj_textbox.page]!=-1 and obj_textbox.draw_char==0 and obj_textbox.react_who[obj_textbox.page]="mike"
{
switch (obj_textbox.reacting[obj_textbox.page])
{
case 0:
scr_reaction("?",obj_textbox.react_scale[obj_textbox.page]);
break;
case 1:
scr_reaction("!",obj_textbox.react_scale[obj_textbox.page]);
break;
}
}
}


Gp_padr = gamepad_button_check(gpl(),gp_padr);
Gp_padl = gamepad_button_check(gpl(),gp_padl);
Gp_padu = gamepad_button_check(gpl(),gp_padu);
Gp_padd = gamepad_button_check(gpl(),gp_padd);
Gp_a = gamepad_button_check(gpl(),gp_face1);
Gp_b = gamepad_button_check(gpl(),gp_face2);
Gp_x = gamepad_button_check(gpl(),gp_face3);
Gp_y = gamepad_button_check(gpl(),gp_face4);
Gp_stickh = gamepad_axis_value(gpl(),gp_axislh);
Gp_stickv = gamepad_axis_value(gpl(),gp_axislv);
Gp_stickl = gamepad_button_check_pressed(gpl(),gp_stickl);
Gp_con = gamepad_is_connected(gpl());
Gp_that_con = gpl();
Gp_r1 = gamepad_button_check_pressed(gpl(),gp_shoulderl);
Gp_r2 = gamepad_button_check(gpl(),gp_shoulderrb);
Gp_start = gamepad_button_check_pressed(gpl(),gp_start);
Gp_select = gamepad_button_check_pressed(gpl(),gp_select);
		
Gp_padr_cl = gamepad_button_check_pressed(gpl(),gp_padr);
Gp_padl_cl = gamepad_button_check_pressed(gpl(),gp_padl);
Gp_padu_cl = gamepad_button_check_pressed(gpl(),gp_padu);
Gp_padd_cl = gamepad_button_check_pressed(gpl(),gp_padd);
Gp_a_cl = gamepad_button_check_pressed(gpl(),gp_face1);
Gp_b_cl = gamepad_button_check_pressed(gpl(),gp_face2);
Gp_x_cl = gamepad_button_check_pressed(gpl(),gp_face3);
Gp_y_cl = gamepad_button_check_pressed(gpl(),gp_face4);



if !instance_exists(obj_textbox) and talk==0 and actions==0 and room!=room_nightmare
{
skip_active=0	
}
if global.dev=1
{

	var esk = Gp_start;

}
else
{
	var esk = keyboard_check_pressed(vk_escape)
}

if keyboard_check_pressed(vk_anykey) global.dev=0;
if gp_any_hold()==1 global.dev=1;
if os_type = os_android and mouse_check_button_pressed(mb_any) global.dev=2;

if obj_inventory.inv_active==false
{
if (obj_phone.t_phone==1 or room==room_fight) and global.dev==0 window_set_cursor(cr_default);
else window_set_cursor(cr_default);
}
if _hp[0]>=80 _hp[0]=80
if _sp[0]>=40 _sp[0]=40
if _hp[1]>=65 _hp[1]=65
if _sp[1]>=50 _sp[1]=50

if battle==0 and depth==9999
{
depth=-9990	
}

if (audio_sound_get_gain(Sng_Slowly)=0 and sound_off == 1) 
{
	audio_stop_sound(Sng_Slowly);
	sound_off=0;
}
if (audio_sound_get_gain(Sng_Colorful_Flowers)=0 and sound_off == 1) 
{
	audio_stop_sound(Sng_Colorful_Flowers);
	sound_off=0;
}
if (audio_sound_get_gain(Sng_Timeless)=0 and sound_off == 1) 
{
	audio_stop_sound(Sng_Timeless);
	sound_off=0;
}
if (audio_sound_get_gain(Sng_Slowly)=0 and sound_off == 2) 
{	audio_sound_gain(Sng_Slowly, 1, 0)
	audio_pause_sound(Sng_Slowly);
	sound_off=0;
}
if (audio_sound_get_gain(Sng_Colorful_Flowers)=0 and sound_off == 2) 
{
	audio_pause_sound(Sng_Colorful_Flowers);
	sound_off=0;
}
if (audio_sound_get_gain(Sng_Timeless)=0 and sound_off == 2) 
{
	audio_pause_sound(Sng_Timeless);
	sound_off=0;
}



if (esk or (global.dev=2 and mouse_x<camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+16 and mouse_x>camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-16 and mouse_y<42+camera_get_view_y(view_camera[0]) and mouse_check_button_pressed(mb_left))) and actions==0 and room!=Main_menu and room!=room_nightmare and room!=room_fight and obj_inventory.inv_active==false
{obj_phone.t_phone =1;}



if obj_phone.t_phone==1 or talk==1 or battle==1 or obj_inventory.inv_active==true
{actions=1;
	_tim=0
}
else
{
	_tim++
	if (_tim > 10 and obj_phone.t_phone==0 and talk==0 and battle==0 and obj_inventory.inv_active==false)
	{
		actions=0;
		_tim=11
	}
	else
	{actions=1;
	}
}

if (global.dev == 2 and instance_exists(obj_textbox) and (device_mouse_x(0)>=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and  device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32 and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64 and device_mouse_check_button_pressed(0,mb_left)) or (device_mouse_x(1)>=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 and device_mouse_x(1)<=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and  device_mouse_y(1)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32 and device_mouse_y(1)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64 and device_mouse_check_button_pressed(1,mb_left)))
{
	if skip_active!=1 skip_active=1;
	else skip_active=0;
}

if (global.dev == 2 and instance_exists(obj_textbox) and (device_mouse_x(0)>=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and  device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32 and device_mouse_check_button_pressed(0,mb_left)) or (device_mouse_x(1)>=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 and device_mouse_x(1)<=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and  device_mouse_y(1)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0]) and device_mouse_y(1)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32 and device_mouse_check_button_pressed(1,mb_left)))
{
	if skip_active!=2 skip_active=2;
	else skip_active=0;
}

if (talk==0) moment_skip=0;

if global.dev = 2
{
	if global.dev == 2
	{
Right =((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64>0.2 and abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64)>abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64) and phone_walk==true)
Left =((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64<0.2 and abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64)>abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64) and phone_walk==true)
Up =((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64<0.2 and abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64)<abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64) and phone_walk==true)
Down =((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64>0.2 and abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64)<abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64) and phone_walk==true)
	}
	if global.dev == 1
	{

Right = Gp_padr;
Left = Gp_padl;
Up = Gp_padu;
Down = Gp_padd;

	}
if ((device_mouse_x(0)>=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and  device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32 and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64 and device_mouse_check_button_pressed(0,mb_left)) or (device_mouse_x(1)>=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 and device_mouse_x(1)<=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]) and  device_mouse_y(1)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32 and device_mouse_y(1)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64 and device_mouse_check_button_pressed(1,mb_left))) and !instance_exists(obj_textbox)
{
	if andr_shift == 0 andr_shift = 1;
	else andr_shift = 0;
}

if andr_shift == 1 and instance_exists(obj_textbox) andr_shift=0;
}
else
{
	if global.dev=1
	{
		Right = Gp_padr;
		Left = Gp_padl;
		Up = Gp_padu;
		Down = Gp_padd;
	}
	else
	{
	Right =keyboard_check(ord("D"))
	Left =keyboard_check(ord("A"))
	Up =keyboard_check(ord("W"))
	Down =keyboard_check(ord("S"))
	}
}

if global.dev == 1
{
	Shift = Gp_r2;
}
else
{
Shift =keyboard_check(vk_shift)	

}


if atk ==false
{
if global.dev != 2
{
if (actions = 0 or (keyboard_check(vk_anykey) or mouse_check_button(mb_any) or gp_any_hold() or fake_down=1 or fake_up=1 or fake_left=1 or fake_right=1)) and (room!=Main_menu) and faza[0]>=0.01
{

if (((Right=1 or Gp_stickh>0.3) and actions = 0) or fake_right=1) and !collision_point(bbox_right+6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_right+6,bbox_top,Obj_wall,true,true)
{
	if (Shift=1 or andr_shift=1) and air>0 and faza[0]>0.01 and fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3)
		{
			phy_position_x += (moveSpeed + moveMoreSpeed);
		}
		else
		{
			phy_position_x += Gp_stickh*(moveSpeed + moveMoreSpeed);
		}
	}
	else 
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3) phy_position_x += moveSpeed;
		else phy_position_x += Gp_stickh*moveSpeed;
	}
}
if (((Left=1 or Gp_stickh<-0.3) and actions = 0) or fake_left=1) and !collision_point(bbox_left-6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_left-6,bbox_top,Obj_wall,true,true)
{
	if (Shift=1 or andr_shift=1) and air>0 and faza[0]>0.01 and fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3)
		{
			phy_position_x -= (moveSpeed + moveMoreSpeed);
		}
		else
		{
			phy_position_x += Gp_stickh*(moveSpeed + moveMoreSpeed);
		}
	}
	else 
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3) phy_position_x -= moveSpeed;
		else phy_position_x += Gp_stickh*moveSpeed;
	}
}
if (((Up=1 or Gp_stickv<-0.3) and actions = 0) or fake_up=1) and !collision_point(bbox_left,bbox_top-6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_top-6,Obj_wall,true,true)
{
	if (Shift=1 or andr_shift=1) and air>0 and faza[0]>0.01 and fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3)
		{
			phy_position_y -= (moveSpeed + moveMoreSpeed);
		}
		else
		{
			phy_position_y += Gp_stickv*(moveSpeed + moveMoreSpeed);
		}

image_speed=1;
	}
	else 
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3) phy_position_y -= moveSpeed;
		else phy_position_y += Gp_stickv*moveSpeed;
	}
}
if (((Down=1 or Gp_stickv>0.3) and actions = 0) or fake_down=1) and !collision_point(bbox_left,bbox_bottom+6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_bottom+6,Obj_wall,true,true)
{
	if (Shift=1 or andr_shift=1) and air>0 and faza[0]>0.01 and fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3)
		{
			phy_position_y += (moveSpeed + moveMoreSpeed);
		}
		else
		{
			phy_position_y += Gp_stickv*(moveSpeed + moveMoreSpeed);
		}
	}
	else 
	{
		if (Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3) phy_position_y += moveSpeed;
		else phy_position_y += Gp_stickv*moveSpeed;
	}
}	

}
}
else
{
	if device_mouse_check_button(0,mb_left) and (device_mouse_x(0)<camera_get_view_x(view_camera[0])+138 and device_mouse_y(0)>camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138)
	{
		phone_walk=true;
	}
	
	if (phone_walk==true and device_mouse_check_button_released(0,mb_left)) phone_walk=false;
	
	if (actions = 0 or fake_down=1 or fake_up=1 or fake_left=1 or fake_right=1) and moveOk==0 and (room!=Main_menu) and faza[0]>=0.01 and (keyboard_check(vk_anykey) or mouse_check_button(mb_any) or gp_any_hold()) and phone_walk==true
	{
		if (Shift=1 or andr_shift=1) and air>0 and faza[0]>0.01 and fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0
		{
			if (abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/32)>0.15) and ((!collision_point(bbox_right+6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_right+6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/32>0) or (!collision_point(bbox_left-6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_left-6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/32<0)) 
			{
					phy_position_x+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/32)*(moveSpeed+moveMoreSpeed),-moveSpeed-moveMoreSpeed,moveSpeed+moveMoreSpeed)*((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)))
			}
			if (abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/32)>0.15) and ((!collision_point(bbox_left,bbox_top-6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_top-6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/32<0) or (!collision_point(bbox_left,bbox_bottom+6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_bottom+6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/32>0)) 
			{
					phy_position_y+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/32)*(moveSpeed+moveMoreSpeed),-moveSpeed-moveMoreSpeed,moveSpeed+moveMoreSpeed)*((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)))
			}
		}
		else
		{
			if (abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/32)>0.15) and ((!collision_point(bbox_right+6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_right+6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/32>0) or (!collision_point(bbox_left-6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_left-6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/32<0)) 
			{
					phy_position_x+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/32)*moveSpeed,-moveSpeed,moveSpeed)*((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)))
			}
			if (abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/32)>0.15) and ((!collision_point(bbox_left,bbox_top-6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_top-6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/32<0) or (!collision_point(bbox_left,bbox_bottom+6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_bottom+6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/32>0)) 
			{
					phy_position_y+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/32)*moveSpeed,-moveSpeed,moveSpeed)*((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)))
			}
		}
	}

}
}
if keyboard_check_pressed(vk_control)
{
	if (danger==false) danger=true;
	else danger=false;
}

if faza[0]>0.01 
{

if ((Down=1 or Gp_stickv>0.3) and actions = 0) or fake_down=1
{	
	switch(cloth)
	{
	case "deff":
	if moveOk==0
	sprite_index=spgd_;
	else
	sprite_index=spbd;
	break;
	case "school":
	sprite_index=spgd_s;
	break;
	case "school_1":
	sprite_index=spgd_s_1;
	break;
	}
	
}
if ((Up=1 or Gp_stickv<-0.3)   and actions = 0) or fake_up=1
{	
	
	switch(cloth)
	{
	case "deff":
	if moveOk==0
	sprite_index=spgu_;
	else
	sprite_index=spbu;
	break;
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
	
}
if ((Right=1 or Gp_stickh>0.3)  and actions = 0) or fake_right=1
{	
	
	switch(cloth)
	{
	case "deff":
	if moveOk==0
	sprite_index=spgr_;
	else
	sprite_index=spbr;
	break;
	case "school":
	sprite_index=spgr_s;
	break;
	case "school_1":
	sprite_index=spgr_s_1;
	break;
	}
	
}
if ((Left=1 or Gp_stickh<-0.3) and actions = 0) or fake_left=1
{	
	
	switch(cloth)
	{
	case "deff":
	if moveOk==0
	sprite_index=spgl_;
	else
	sprite_index=spbl;
	break;
	case "school":
	sprite_index=spgl_s;
	break;
	case "school_1":
	sprite_index=spgl_s_1;
	break;
	}
	
}


if air>=airLim
{
	switch(cloth)
	{
	case "deff":
		switch(sprite_index)
		{
		case spbu:
		sprite_index=spgu_
		break;
		case spbd:
		sprite_index=spgd_
		break;
		case spbl:
		sprite_index=spgl_
		break;
		case spbr:
		sprite_index=spgr_
		break;
		}
	break;
	}

}
	
}

if global.dev==1 and gamepad_is_connected(gpl()) and (need_to_rumble=false or (room!=Main_menu and actions = 0 and moveOk==0 and (Right=1 or Left=1 or Up=1 or Down=1 or fake_down=1 or fake_up=1 or fake_left=1 or fake_right=1 or gamepad_axis_value(gpl(),gp_axislh)<-0.3 or gamepad_axis_value(gpl(),gp_axislh)>0.3 or gamepad_axis_value(gpl(),gp_axislv)>0.3 or gamepad_axis_value(gpl(),gp_axislv)<-0.3 )))
{
	if round(image_index)=1 gamepad_set_vibration(gpl(),0.2,0)

	if round(image_index)=5 gamepad_set_vibration(gpl(),0,0.2)

	if round(image_index)=2 or round(image_index)>=6 gamepad_set_vibration(gpl(),0,0)
}
	

if (phy_position_x != phy_position_xprevious or phy_position_y != phy_position_yprevious) 
{
for (var i = array_follow-1; i >0; i--){

	follow_x[i] = follow_x[i-1];
	follow_y[i] = follow_y[i-1];
	
	follow_sprite[i] = follow_sprite[i-1]
	follow_image[i] = follow_image[i-1]
}	
	
follow_x[0] = x;
follow_y[0] = y;
follow_sprite[0]=sprite_index
follow_image[0] = image_index
}

if air>0 and faza[0]>0.01 and (((Right=1 or Left=1 or Up=1 or Down=1 or ((Gp_stickh<-0.3 or Gp_stickh>0.3 or Gp_stickv>0.3 or Gp_stickv<-0.3) and Gp_con)) and (keyboard_check(vk_anykey) or mouse_check_button(mb_any) or gp_any())) or fake_down=1 or fake_up=1 or fake_left=1 or fake_right=1)
	{
		if fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0
		{
		if Gp_con and (Gp_stickh<-0.3 or Gp_stickh>0.3 or Gp_stickv>0.3 or Gp_stickv<-0.3) image_speed=max(abs(Gp_stickh),abs(Gp_stickv))+Shift
		else image_speed=1+Shift+andr_shift
		}
		else
		{image_speed=1}
	}


if (Right or Left or Up or Down) and actions=0 and moveOk=0
{

}
if room != Main_menu
{
if (Right or Left or Up or Down or ((Gp_stickh<-0.3 or Gp_stickh>0.3 or Gp_stickv>0.3 or Gp_stickv<-0.3) and Gp_con)) and actions=0 and ((Shift=1 or andr_shift=1) and faza[0]>0.01 )and moveOk=0
{if run_snd=1
		{audio_play_sound(snd_run_ground,1,true);
		run_snd=0;}
}else {run_snd=1; audio_stop_sound(snd_run_ground)}
if ((Right or Left or Up or Down or ((Gp_stickh<-0.3 or Gp_stickh>0.3 or Gp_stickv>0.3 or Gp_stickv<-0.3) and Gp_con)) and actions=0 and ((Shift=0 or andr_shift=0) and faza[0]>=0.01)and moveOk=0) or fake_up=1 or fake_down=1 or fake_left=1 or fake_right=1
{if walk_snd=1 and !audio_is_playing(snd_run_ground)
	{
		audio_play_sound(Snd_walk_ground,1,true);
		walk_snd=0;

	}
}else 
{walk_snd=1; audio_stop_sound(Snd_walk_ground)}
}

if air<=0 or moveOk=1
{moveOk=1;
moveSpeed=0;
moveMoreSpeed=0;
air+=2;}
air = clamp(air, 0, airLim);
if  air>=airLim
{moveOk=0;
moveSpeed=2;
moveMoreSpeed=2;}

if (actions = 1 or (Down = 0 and Up = 0 and Left = 0 and Right = 0 and Gp_stickh>=-0.3 and Gp_stickh<=0.3 and Gp_stickv<=0.3 and Gp_stickv>=-0.3)) and moveOk==0 and fake_down=0 and fake_up=0  and fake_left=0  and fake_right=0 //and (keyboard_check_released(ord("S")) or keyboard_check_released(ord("D")) or keyboard_check_released(ord("A")) or keyboard_check_released(ord("W")) ))
{image_speed=0;
image_index=7;}
if (moveOk==1) image_speed=1;	

if (x>stop_x-1 and x<stop_x+1) {fake_left=0; fake_right=0}
if (y>stop_y-1 and y<stop_y+1) {fake_down=0; fake_up=0}
