if (!danger) draw_self();

if (danger==true and !instance_exists(obj_b_player)) 
{
	global.selected_unit=instance_create_depth(x,y,depth,obj_b_player)
}
air_alp=clamp(air_alp,0,1)

if air>=airLim air_alp-=0.1
if air<airLim air_alp+=0.1

if moveOk=0
{
draw_sprite_ext(spr_breath_1,0,x,y-5,1,1,0,c_white,air_alp);
draw_sprite_part_ext(spr_breath_1,1,0,0,30*(air/airLim),5,x,y-5,1,1,c_white,air_alp);
}
else
{
draw_sprite_ext(spr_breath_2,0,x,y-5,1,1,0,c_white,air_alp);
draw_sprite_part_ext(spr_breath_2,1,0,0,30*(air/airLim),5,x,y-5,1,1,c_white,air_alp);
}

if ((x!=xprevious or y!=yprevious) and (Shift=1 or andr_shift=1) and air>0 and fake_down=0 and fake_up=0 and fake_left=0 and fake_right=0) air-=1;
if danger==false
{
if ((x!=xprevious or y!=yprevious) and Shift=0 and andr_shift=0 and air>0 and moveOk=0) air+=0.5;
if (x==xprevious and y==yprevious and moveOk=0) air+=1.5
}else air+=1;	


/*
if (Shift=1 or andr_shift=1) and air>0 and faza[0]>0.01
		{
			if (abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64)>0.2) and ((!collision_point(bbox_right+6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_right+6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64>0) or (!collision_point(bbox_left-6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_left-6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64<0)) 
			{
				if (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))>cos(degtorad(45))
					phy_position_x+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/64)*(moveSpeed+moveMoreSpeed),-moveSpeed-moveMoreSpeed,moveSpeed+moveMoreSpeed)
				else
					phy_position_x+=clamp(((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74) / sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))*(1/0.7))*(moveSpeed+moveMoreSpeed),-moveSpeed-moveMoreSpeed,moveSpeed+moveMoreSpeed)
			}
			if (abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64)>0.2) and ((!collision_point(bbox_left,bbox_top-6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_top-6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64<0) or (!collision_point(bbox_left,bbox_bottom+6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_bottom+6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64>0)) 
			{
				if (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))>sin(degtorad(45))
					phy_position_y+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/64)*(moveSpeed+moveMoreSpeed),-moveSpeed-moveMoreSpeed,moveSpeed+moveMoreSpeed)
				else
					phy_position_y+=clamp(((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74) / sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))*(1/0.7))*(moveSpeed+moveMoreSpeed),-moveSpeed-moveMoreSpeed,moveSpeed+moveMoreSpeed)
			}
		}
		else
		{
			if (abs((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64)>0.2) and ((!collision_point(bbox_right+6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_right+6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64>0) or (!collision_point(bbox_left-6,bbox_bottom,Obj_wall,true,true) and !collision_point(bbox_left-6,bbox_top,Obj_wall,true,true) and (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/64<0)) 
			{
				if (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))>cos(degtorad(45))
					phy_position_x+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/64)*moveSpeed,-moveSpeed,moveSpeed)

				else
					phy_position_x+=clamp(((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74) / sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))*(1/0.7))*moveSpeed,-moveSpeed,moveSpeed)
			}
			if (abs((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64)>0.2) and ((!collision_point(bbox_left,bbox_top-6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_top-6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64<0) or (!collision_point(bbox_left,bbox_bottom+6,Obj_wall,true,true) and !collision_point(bbox_right,bbox_bottom+6,Obj_wall,true,true) and (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/64>0)) 
			{
				if (device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))>sin(degtorad(45)) 
					phy_position_y+=clamp((sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))/64)*moveSpeed,-moveSpeed,moveSpeed)
				else
					phy_position_y+=clamp(((device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74) / sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))*(1/0.7))*moveSpeed,-moveSpeed,moveSpeed)
			}
		}