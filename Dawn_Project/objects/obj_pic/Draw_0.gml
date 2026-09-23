if (picture==noone or picture==no_no)
{var _x=1
 var _y=1}
else
{sprite_index=picture

_x=camera_get_view_width(view_camera[0])/(sprite_width-26)
_y=camera_get_view_height(view_camera[0])/sprite_height
if (display_get_width()/display_get_height()>16/9) 
{
	//бардюры побокам
	draw_sprite_ext(black_black,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0])/64,camera_get_view_height(view_camera[0])/64,0,c_white,1)
	draw_sprite_ext(sprite_index,image_index,camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])-sprite_width*_y)/2,camera_get_view_y(view_camera[0]),_y,_y,0,c_white,1)
}
else 
{
	//бардюры сверху/снизу
	draw_sprite_ext(black_black,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0])/64,camera_get_view_height(view_camera[0])/64,0,c_white,1)
	draw_sprite_ext(sprite_index,image_index,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-sprite_width*_x/2,camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])-sprite_height*_x)/2,_x,_x,0,c_white,1)
}
}
