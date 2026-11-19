for (var i = array_follow-1; i >=0; i--){
	
	follow_x[i] = x
	follow_y[i] = y
	follow_sprite[i] = obj_payer.sprite_index
	follow_image[i] = 0
}
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