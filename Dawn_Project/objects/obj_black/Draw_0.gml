sprite_index=black;
//draw_self();

draw_sprite_stretched(sprite_index,image_index,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]))
if global.dev == 2
{
if room == Main_menu draw_sprite(spr_arrows_1,0,camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138)	
if !instance_exists(obj_textbox)
{
if room!=Main_menu and room!=room_fight
{
draw_sprite(spr_arrows,0,camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138) //112.4
draw_sprite_ext(spr_pause,obj_phone.t_phone,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-16,camera_get_view_y(view_camera[0])+10,0.5,0.5,0,c_white,1)
draw_sprite(spr_shift,obj_payer.andr_shift,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64)
var cosx = (device_mouse_x(0)-camera_get_view_x(view_camera[0])-74)/sqrt(sqr((device_mouse_x(0)-camera_get_view_x(view_camera[0])-74))+sqr(device_mouse_y(0)-camera_get_view_y(view_camera[0])-camera_get_view_height(view_camera[0])+74))
if obj_payer.phone_walk==true draw_sprite(spr_arrows_c,0,min(max(mouse_x-10,camera_get_view_x(view_camera[0])+64+30*min(cosx,0)),camera_get_view_x(view_camera[0])+64+30*max(cosx,0)),max(min(mouse_y-10,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-54),camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-116))
else draw_sprite(spr_arrows_c,0,camera_get_view_x(view_camera[0])+64,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-84)
}
}
else
{
if obj_textbox.option_number>1 and obj_textbox.draw_char == obj_textbox.text_length[obj_textbox.page] and obj_textbox.page == obj_textbox.page_number-1
{
draw_sprite(spr_arrows_1,0,camera_get_view_x(view_camera[0])+10,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138)	
}
draw_sprite(spr_auto,obj_payer.skip_active,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64)	
draw_sprite(spr_auto_skip,obj_payer.skip_active,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-32)	
}
}

//draw_text(camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+5,"FPS="+string(fps))