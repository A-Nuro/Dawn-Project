//draw_text(30,30,instance_exists() global.bad_team[|0])
//draw_text(30,30,obj_payer.unit_xp[0])
//draw_text(30,60,obj_payer.unit_lvl[0])
var _hp = current[@ HP]/base[@ HP];
var _sp = current[@ SP]/base[@ SP];

/*
if ((global.dev!=1 and mouse_x>=x and mouse_x<=x+64 and mouse_y>=y and mouse_y<=y+64) or (global.dev==1 and id != global.selected_unit and obj_manager.allow_input) ) and obj_manager.combat_phase==phase.wait and camera_get_view_width(view_camera[0])>=640 and (mouse_check_button_pressed(mb_right) or (global.targeting or global.skill_targeting))
{
check=true	
}
if ((mouse_x>=x+64 or mouse_x<=x or mouse_y>=y+64 or mouse_y<=y) and mouse_check_button_pressed(mb_any)) or camera_get_view_width(view_camera[0])<638 or obj_manager.combat_phase!=phase.wait or (obj_cursor.x!=x and (global.targeting or global.skill_targeting))
{
check=false
}*/

if draw_target==true //and obj_manager.cam_w>630
{
//draw_sprite_stretched(spr_textbox2,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-154,camera_get_view_y(view_camera[0])+16,148,100+(30*array_length(active_effects)))
//draw_sprite_stretched(spr_textbox3,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-150,camera_get_view_y(view_camera[0])+44,64,64)
//draw_sprite(sprite_index,image_index,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-150,camera_get_view_y(view_camera[0])+44)
scribble(string(unit_name)).starting_format("Font_main",c_white).blend(c_white).scale(0.25).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-150,camera_get_view_y(view_camera[0])+18);
scribble("HP"+string(current[@ HP])+"/"+string(base[@ HP])).starting_format("Font_main",c_white).blend(c_white).scale(0.16).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-80,camera_get_view_y(view_camera[0])+44);
scribble("SP"+string(current[@ SP])+"/"+string(base[@ SP])).starting_format("Font_main",c_white).blend(c_white).scale(0.16).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-80,camera_get_view_y(view_camera[0])+62);
draw_sprite_ext(ui_hp,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-80,camera_get_view_y(view_camera[0])+54,1,1,0,c_white,1);
draw_sprite_part_ext(ui_hp,1,0,0,hp_bar_width*_hp,hp_bar_height,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-80,camera_get_view_y(view_camera[0])+54,1,1,c_white,1);
draw_sprite_ext(ui_sp,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-80,camera_get_view_y(view_camera[0])+72,1,1,0,c_white,1);
draw_sprite_part_ext(ui_sp,1,0,0,hp_bar_width*_sp,hp_bar_height,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-80,camera_get_view_y(view_camera[0])+72,1,1,c_white,1);

if array_length(active_effects)>0
{
for(var e = 0; e<array_length(active_effects); e++)
{
	if (active_effects[e].active==true) 
{
	if active_effects[e].turns-active_effects[e].turns_remind>=0 draw_sprite_stretched_ext(spr_eff,array_get_index(effects,active_effects[e]),camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-150,camera_get_view_y(view_camera[0])+110,20,20,c_white,1);
	scribble(active_effects[e].words).starting_format("Font_main",c_white).blend(c_white).wrap(114).line_spacing(9).scale(0.16).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-128,camera_get_view_y(view_camera[0])+108+(30*e));
}
}
}

}




	
//}

for (var s=0;s<array_length(active_effects); s++)
{
if (active_effects[s].active==true) 
{
	if active_effects[s].turns-active_effects[s].turns_remind>=1 draw_sprite_stretched_ext(spr_eff,array_get_index(effects,active_effects[s]),(x-2)+20*array_get_index(active_effects,active_effects[s]),y-69,20,20,c_white,alp);
		else draw_sprite_stretched_ext(spr_eff,array_get_index(effects,active_effects[s]),(x-2)+20*array_get_index(active_effects,active_effects[s]),y-69,20,20,c_white,max(sqrt(sqr(sin(current_time/150)))*alp,0.2));

}

}

//scribble(string(obj_manager.allow_input)).starting_format("Font_main",c_white).scale(0.16).draw(x,y);
//scribble(string(turn_finished)).starting_format("Font_main",c_white).scale(0.16).draw(x,y+10);


//if (multi_draw == true) 
//{draw_sprite(point, 0, x, y)}
if global.selected_unit!=noone
{
if global.selected_unit.is_ai==false
{
if global.selected_unit.selected_skill == -1 or global.selected_unit.selected_skill.action == single_target_attack
	{
		//if (draw_target and obj_manager.allow_input) draw_sprite(point, 0, x, y)
	}

if global.selected_unit.selected_skill != -1 and global.selected_unit.selected_skill.action == multi_target_attack
{
	
	if id != global.selected_unit and obj_manager.allow_input
	{
		draw_sprite(point, 0, x, y)
	}

}

if global.selected_unit.selected_skill != -1 and global.selected_unit.selected_skill.action == multi_target_team_attack
{
	
	if id.team != global.selected_unit.team and obj_manager.allow_input
	{
		//scribble(string(global.selected_unit.selected_skill.doing)).starting_format("Font_main",c_white).scale(0.16).draw(x,y-34);
		draw_sprite(point, 0, x, y)
	}

}

if global.selected_unit.selected_skill != -1 and global.selected_unit.selected_skill.action == multi_target_all_attack
{
		draw_sprite(point, 0, x, y)
}

if global.selected_unit.selected_skill != -1 and global.selected_unit.selected_skill.action == self_target_attack
{
	if id == global.selected_unit and obj_manager.allow_input
	{
		draw_sprite(point, 0, x, y)
	}

}
}
}

//if (selected) draw_sprite(point, 0, x, y)

/*
if (effects[1].active==true) 
{if effects[1].turns-effects[1].turns_remind>=1 draw_sprite_stretched_ext(spr_eff,1,(x-2)+15*array_get_index(active_effects,effects[1]),y-64,15,15,c_white,1);
else draw_sprite_stretched_ext(spr_eff,1,(x-2)+15*array_get_index(active_effects,effects[1]),y-64,15,15,c_white,max(sqrt(sqr(sin(current_time/150))),0.2));}
if (effects[2].active==true) 
{if effects[2].turns-effects[2].turns_remind>=1 draw_sprite_stretched_ext(spr_eff,1,(x-2)+15*array_get_index(active_effects,effects[2]),y-64,15,15,c_white,1);
else draw_sprite_stretched_ext(spr_eff,1,(x-2)+15*array_get_index(active_effects,effects[2]),y-64,15,15,c_white,max(sqrt(sqr(sin(current_time/150))),0.2));}
/*
if (effects[3].active==true) 
{if effects[3].turns-effects[3].turns_remind>=1 draw_sprite_stretched_ext(spr_eff,1,(x-2)+15*array_get_index(active_effects,effects[3]),y-64,15,15,c_white,1);
else draw_sprite_stretched_ext(spr_eff,1,(x-2)+15*array_get_index(active_effects,effects[3]),y-64,15,15,c_white,max(sqrt(sqr(sin(current_time/150))),0.2));}

if id==global.selected_unit and obj_manager.combat_phase==phase.wait and obj_manager.cam_w>600 and ds_list_find_index(global.good_team,id)!=-1
{
draw_sprite(spr_targ_ar,image_index,x+28,y-7)	
}

if obj_manager.combat_phase==phase.win
{
	scribble("Победа!").starting_format("Font_main").scale(0.4).draw(242,inst_timer_for_end.y);
	/*
	if obj_manager.is_lvl_up!=-1
	{
	if id=global.good_team[|0] and inst_timer_for_end.y<=130 
	{
		//draw_sprite_stretched(spr_textbox2,0,inst_timer_bock.x-61,inst_timer_for_end.y-46,string_width("получил новый уровень!")*0.3+6,string_height("получил новый уровень!")*0.3+2+string_height("Ё")*0.3)
		//scribble("получил новый уровень!").starting_format("Font_main").scale(0.3).draw(inst_timer_bock.x-58,inst_timer_for_end.y-25);
	}
	if id=global.good_team[|0] and inst_timer_for_end.y>130 
	{
		//draw_sprite_stretched(spr_textbox2,0,177,84,string_width("получил новый уровень!")*0.3+6,string_height("получил новый уровень!")*0.3+2+string_height("Ё")*0.3)
		//scribble("получил новый уровень!").starting_format("Font_main").scale(0.3).draw(180,105);
	}
	}
	for (var i = 0; i < array_length(obj_manager.is_lvl_up); i++)
	{
		if obj_manager.is_lvl_up[i] = 0 and id==global.good_team[|0] 
		{
			var str0 = "Майк ур. "+string(obj_payer.unit_lvl[0])+"!"
			draw_sprite_stretched(spr_textbox2,0,25,inst_timer_for_end.y-50+(30*i)-2,string_width(str0)*0.4+10,string_height(str0)*0.4+4)
			scribble(str0,20).starting_format("Font_main").scale(0.4).draw(30,inst_timer_for_end.y-50+(30*i));
		}
	//if id=global.good_team[|0] and inst_timer_for_end.y>130 scribble("Майк ур. "+string(obj_payer.unit_lvl[0]),20).starting_format("Font_main").scale(0.3).draw(180,85);
	}
	
	
	if ds_list_size(global.bad_team)==1
	{
	if id=global.good_team[|0] and inst_timer_for_end.y<=145 scribble("Получено "+string(global.bad_team[|0].xp_get)+" xp").starting_format("Font_main").scale(0.3).draw(inst_timer_bock.x+8,170);
	if id=global.good_team[|0] and inst_timer_for_end.y>145 scribble("Получено "+string(global.bad_team[|0].xp_get)+" xp").starting_format("Font_main").scale(0.3).draw(228,inst_timer_for_end.y+25);
	}
	if ds_list_size(global.bad_team)==2
	{
	if id=global.good_team[|0] and inst_timer_for_end.y<=145 scribble("Получено "+string(global.bad_team[|0].xp_get+global.bad_team[|1].xp_get)+" xp").starting_format("Font_main").scale(0.3).draw(inst_timer_bock.x+78,170);
	if id=global.good_team[|0] and inst_timer_for_end.y>145 scribble("Получено "+string(global.bad_team[|0].xp_get+global.bad_team[|1].xp_get)+" xp").starting_format("Font_main").scale(0.3).draw(228,inst_timer_for_end.y+25);
	}
	if ds_list_size(global.bad_team)==3
	{
	if id=global.good_team[|0] and inst_timer_for_end.y<=145 scribble("Получено "+string(global.bad_team[|0].xp_get+global.bad_team[|1].xp_get+global.bad_team[|2].xp_get)+" xp").starting_format("Font_main").scale(0.3).draw(inst_timer_bock.x+8,170);
	if id=global.good_team[|0] and inst_timer_for_end.y>145 scribble("Получено "+string(global.bad_team[|0].xp_get+global.bad_team[|1].xp_get+global.bad_team[|2].xp_get)+" xp").starting_format("Font_main").scale(0.3).draw(228,inst_timer_for_end.y+25);
	}
	
	if id=global.good_team[|0] and inst_timer_for_end.y>=155
	{
	draw_sprite_stretched_ext(white_white,1,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,sqrt(sqr(sin((155-inst_timer_for_end.y)/100))))
	}
}
if obj_manager.combat_phase==phase.lose and inst_timer_for_end.y<136
{
	scribble("Поражение!").starting_format("Font_main").scale(0.4).draw(240,inst_timer_for_end.y);
}
if obj_manager.combat_phase==phase.lose and inst_timer_for_end.y>=136
{	
	//draw_sprite_stretched_ext(black_black,1,0,0,640,360,c_white,1)
	if id=global.good_team[|0]
	{
	draw_sprite_stretched_ext(black_black,1,0,0,640,360,c_white,sqrt(sqr(sin((136-inst_timer_for_end.y)/125))))
	if inst_timer_for_end.y>=360 draw_sprite_stretched_ext(black_black,1,0,0,640,360,c_white,1)
	if inst_timer_bock.x<234
	{
	draw_sprite_stretched(Sprite139,1,234.69,130,128,62.976)
	}
	scribble("Поражение!").starting_format("Font_main").scale(0.4).draw(240,136);
	scribble("Вы будете возвращены на место последнего сохранения").starting_format("Font_main").scale(0.18).wrap(115).line_spacing(9).draw(240,162);
	}
	

}
/*
for (var i =0; i<array_length(active_effects);i++)
{
draw_text(x,y*(i+1),string(active_effects[i]))	
}*/
//scribble(id).starting_format("Font_main").scale(0.2).draw(x,y-10);




/*

scribble(abs((y-320-(abs(4-(cur_pos+0.5))+0.5)*32)/8)).starting_format("Font_main").scale(0.2).draw(x,y);
scribble(abs((320-(abs(4-(cur_pos+0.5))+0.5)*32-y)/8)).starting_format("Font_main").scale(0.2).draw(x,y-10);
scribble(string(cur_pos)+" "+string(x)+" "+string(y)).starting_format("Font_main").scale(0.2).draw(x,y-20);

scribble(instance_position(x+96,320-(abs(4-(cur_pos+1.5))+0.5)*32,obj_unit)).starting_format("Font_main").scale(0.2).draw(x,y+20);
scribble(instance_position(x-96,320-(abs(4-(cur_pos-0.5))+0.5)*32,obj_unit)).starting_format("Font_main").scale(0.2).draw(x,y-20);
*/
