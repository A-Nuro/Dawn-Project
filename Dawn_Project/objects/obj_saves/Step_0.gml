x=(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 36)
y=(camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])- 36)
depth=-9999;
if savekey=1 and room!=Main_menu
{	
if room=room_faceles
{sprite_index=spr_save_faceless;
}
else
{
sprite_index=spr_save;
}
make_save(global.save_slot);
savekey=0;



}
else
{
if image_index>=9
{
sprite_index=spr_save2;	
}}