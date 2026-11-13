var _hp = current[@ HP]/base[@ HP];
var _sp = current[@ SP]/base[@ SP];

if obj_battle_button.active==true or inst_my_best_inv.inv_active==true image_speed=0
else image_speed=1

if our==true
{
	
	if inst_my_best_inv.inv_active==false
	{
	if id = global.selected_unit
	{
		
		id.depth=0
		draw_sprite_ext(spr_textbox2,0,camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+176+52*array_get_index(global.team,object_index),4.5,2.5,0,c_white,1);
		draw_sprite_ext(spr_textbox2,2,camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+176+52*array_get_index(global.team,object_index),1.6,1.6,0,c_white,1);
		draw_sprite_ext(spr_pr,current_second,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+177+52*array_get_index(global.team,object_index),2,2,0,c_white,1);
	}
	else
	{
		id.depth=5
		draw_sprite_ext(spr_textbox2,0,camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+176+52*array_get_index(global.team,object_index),4.5,2.5,0,c_white,0.9);
		draw_sprite_ext(spr_textbox3,0,camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+176+52*array_get_index(global.team,object_index),4.5,2.5,0,c_white,0.9);
		draw_sprite_ext(spr_textbox2,2,camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+176+52*array_get_index(global.team,object_index),1.6,1.6,0,c_white,0.9);
		draw_sprite_ext(spr_textbox3,2,camera_get_view_x(view_camera[0])+5,camera_get_view_y(view_camera[0])+176+52*array_get_index(global.team,object_index),1.6,1.6,0,c_white,0.9);
		draw_sprite_ext(spr_pr,current_second,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+177+52*array_get_index(global.team,object_index),2,2,0,c_white,1);
	}
	draw_sprite_ext(ui_hp,0,camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+202+52*array_get_index(global.team,object_index),1,1,0,c_white,1);
	draw_sprite_ext(ui_hp,1,camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+202+52*array_get_index(global.team,object_index),_hp,1,0,c_white,1);
	draw_sprite_ext(ui_sp,0,camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+218+52*array_get_index(global.team,object_index),1,1,0,c_white,1);
	draw_sprite_ext(ui_sp,1,camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+218+52*array_get_index(global.team,object_index),_sp,1,0,c_white,1);
	scribble(string(unit_name)).starting_format("Font_main",c_white).blend(c_white,1).scale(0.21).draw(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+178+52*array_get_index(global.team,object_index));
	scribble("HP:"+string(current[@ HP])+"/"+string(base[@ HP])).starting_format("Font_main",c_white).blend(c_white,1).scale(0.16).draw(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+190+52*array_get_index(global.team,object_index));
	scribble("SP:"+string(current[@ SP])+"/"+string(base[@ SP])).starting_format("Font_main",c_white).blend(c_white,1).scale(0.16).draw(camera_get_view_x(view_camera[0])+39,camera_get_view_y(view_camera[0])+208+52*array_get_index(global.team,object_index));
	}
}
else
{
	if id.current[@ HP] > 0
	{
	if id = global.selected_unit
	{
		id.depth=0
		draw_sprite_ext(spr_textbox2,0,x-2,y-48,3.2,2.5,0,c_white,alp);
	}
	else
	{
		id.depth=5
		draw_sprite_ext(spr_textbox2,0,x-2,y-48,3.2,2.5,0,c_white,alp-0.1);
		draw_sprite_ext(spr_textbox3,0,x-2,y-48,3.2,2.5,0,c_white,alp-0.1);
	}
	draw_sprite_ext(ui_hp,0,x,y-22,1,1,0,c_white,alp);
	draw_sprite_part_ext(ui_hp,1,0,0,hp_bar_width*_hp,hp_bar_height,x,y-22,1,1,c_white,alp);
	draw_sprite_ext(ui_sp,0,x,y-6,1,1,0,c_white,alp);
	draw_sprite_part_ext(ui_sp,1,0,0,hp_bar_width*_sp,hp_bar_height,x,y-6,1,1,c_white,alp);
	scribble(string(unit_name)).starting_format("Font_main",c_white).blend(c_white,alp).scale(0.21).draw(x,y-46);
	scribble("HP:"+string(current[@ HP])+"/"+string(base[@ HP])).starting_format("Font_main",c_white).blend(c_white,alp).scale(0.16).draw(x,y-34);
	scribble("SP:"+string(current[@ SP])+"/"+string(base[@ SP])).starting_format("Font_main",c_white).blend(c_white,alp).scale(0.16).draw(x,y-16);
	}
}