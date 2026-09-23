cursor=clamp(cursor,1,6);
add=clamp(add,-30,0)

if (!position_meeting(x,y,obj_unit) and add=-30) add=0;

		if global.selected_unit!=noone
		{
		cursor=clamp(cursor,global.selected_unit.cur_pos-1,global.selected_unit.cur_pos+1);
		//if (cursor < global.selected_unit.cur_pos-1 or cursor<1) cursor = global.selected_unit.cur_pos+1;
		//if (cursor > global.selected_unit.cur_pos+1 or cursor > 6) cursor = global.selected_unit.cur_pos-1;
		if (global.targeting or global.skill_targeting) and !instance_exists(obj_effects) and global.selected_unit.state!=ATTACK and global.selected_unit.state!=CAST and global.selected_unit.is_ai==false and obj_manager.combat_phase==phase.wait
		{

		if (keyboard_check_released(vk_left) or gamepad_button_check_released(gpl(),gp_padl)) and cursor!=1
		{
			cursor --;
			if (add!=0) add=0
		}
		
		if (keyboard_check_released(vk_right) or gamepad_button_check_released(gpl(),gp_padr)) and cursor!=6
		{
			cursor ++;
			if (add!=0) add=0
		}
		
		if (keyboard_check_released(vk_up) or gamepad_button_check_released(gpl(),gp_padu)) and position_meeting(x,y-30,obj_unit) 
		{
			add-=30
		}
		
		if (keyboard_check_released(vk_down) or gamepad_button_check_released(gpl(),gp_padd)) and position_meeting(x,y+30,obj_unit) and add<0
		{
			add+=30
		}
		
		}
		}
		if global.selected_unit!=noone
		{
		if (global.targeting or global.skill_targeting or obj_inventory.inv_active==true) and !instance_exists(obj_effects) and global.selected_unit.state!=ATTACK and global.selected_unit.state!=CAST and global.selected_unit.is_ai==false and obj_manager.combat_phase==phase.wait and (ms_x!=mouse_x or ms_y!=mouse_y)
		{
		/*
		for (var i = 0; i < ds_list_size(global.units); i++)
		{
		
		if position_meeting(mouse_x, mouse_y, global.units[|i]) and x!=global.units[|i].x
		{
		x=global.units[|i].x;
		y=global.units[|i].y;
		cursor=x/96;
		obj_manager.andr_tap=0;
		}
		}
		*/

		if mouse_x>=global.selected_unit.x and mouse_x<=global.selected_unit.x+64 and mouse_y<=288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32+64 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32
		{
		cursor=global.selected_unit.cur_pos;
		if (mouse_y<=288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32+64 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32+34 and add=-30) add=0;
		}
		
		if mouse_x>=global.selected_unit.x and mouse_x<=global.selected_unit.x+64 and mouse_y<=288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32+64-30 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5)*32-30 and position_meeting(global.selected_unit.x,288-(abs(4-(global.selected_unit.cur_pos+0.5))+0.5-1)*32-30,obj_unit)
		{
		cursor=global.selected_unit.cur_pos;
		add=-30;
		}
		
		if mouse_x>=global.selected_unit.x+96 and mouse_x<=global.selected_unit.x+160 and mouse_y<=288-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5)*32+64 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5)*32
		{
		cursor=global.selected_unit.cur_pos+1;
		}
		
		if mouse_x>=global.selected_unit.x+96 and mouse_x<=global.selected_unit.x+160 and mouse_y<=288-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5)*32+64-30 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5)*32-30 and position_meeting(global.selected_unit.x+96,288-(abs(4-(global.selected_unit.cur_pos+1.5))+0.5-1)*32-30,obj_unit)
		{
		cursor=global.selected_unit.cur_pos+1;
		add=-30;
		}
		
		if mouse_x>=global.selected_unit.x-96 and mouse_x<=global.selected_unit.x-32 and mouse_y<=288-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5)*32+64 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5)*32
		{
		cursor=global.selected_unit.cur_pos-1;
		}
		
		if mouse_x>=global.selected_unit.x-96 and mouse_x<=global.selected_unit.x-32 and mouse_y<=288-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5)*32+64-30 and mouse_y>=288-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5)*32-30 and position_meeting(global.selected_unit.x-96,288-(abs(4-(global.selected_unit.cur_pos-0.5))+0.5-1)*32-30,obj_unit)
		{
		cursor=global.selected_unit.cur_pos-1;
		add=-30;
		}
		
		
		ms_x=mouse_x;
		ms_y=mouse_y;
		}
		}
/*
if (cursor>3+ds_list_size(global.bad_team)) cursor = 4-ds_list_size(global.good_team);
if (cursor<4-ds_list_size(global.good_team)) cursor = 3+ds_list_size(global.bad_team);
*/

x=cursor*96
if cursor < 4
{
	y=(cursor*32)+196+add;
}
else
{
	y=416-(cursor*32)+add;
}

