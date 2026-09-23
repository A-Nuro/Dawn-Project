sprite_index=obj_payer.battle_bg;
draw_self();
//if (combat_phase==phase.wait and global.selected_unit.current[@HP]>0 and global.selected_unit.turn_finished == false) 
if combat_phase!=phase.win and combat_phase!=phase.lose and !instance_exists(obj_textbox)
{
draw_sprite_stretched(spr_textbox,0,230,31,160,65)
}
if global.selected_unit!= noone
{
	if global.selected_unit.is_ai==true
		{
			
			if global.selected_unit.state=ATTACK 
			{
				if !instance_exists(obj_battle_splash) instance_create_depth(global.selected_unit.x,global.selected_unit.y,global.selected_unit.depth,obj_battle_splash)
				if instance_exists(obj_battle_splash)
				{
					with(obj_battle_splash)
					{
						type=0
						un=global.selected_unit.unit_name 
						un2=global.selected_unit.unit_post_name
						tn=global.selected_targets[|0].unit_name_atk
					}
				}
			}
			if (global.selected_unit.state=CAST and global.selected_unit.selected_skill != -1) 
			{
				if !instance_exists(obj_battle_splash) instance_create_depth(global.selected_unit.x,global.selected_unit.y,global.selected_unit.depth,obj_battle_splash)
				if instance_exists(obj_battle_splash)
				{
					with(obj_battle_splash)
					{
						type=1
						un=global.selected_unit.unit_name 
						un2=global.selected_unit.unit_post_name
						sn=global.selected_unit.selected_skill.name
					}
				}
			}
			if global.selected_unit.state=NO_THING 
			{
				if !instance_exists(obj_battle_splash) instance_create_depth(global.selected_unit.x,global.selected_unit.y,global.selected_unit.depth,obj_battle_splash)
				if instance_exists(obj_battle_splash)
				{
					with(obj_battle_splash)
					{
						type=2
						un=global.selected_unit.unit_name 
						dn=global.selected_unit.no_thing[0]
					}
				}
			}
		}
}
if obj_manager.combat_phase==phase.lose 
{		
draw_sprite_stretched_ext(black_black,1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,sqrt(sqr(cos((136-inst_timer_for_end.y)/90))))
}
if obj_manager.combat_phase==phase.lose and inst_timer_for_end.y>=136
{		
draw_sprite_stretched_ext(black_black,1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,1)
}

//draw_text(camera_get_view_x(view_camera[0])+20,camera_get_view_y(view_camera[0]),((320-cam_w/2)-camera_get_view_x(view_camera[0]))*0.08)