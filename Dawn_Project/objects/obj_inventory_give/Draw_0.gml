draw_sprite_stretched(spr_textbox2,0,x-3,y-3,12+row_length*32,12+(((INV_GIVE_SLOTS-1) div row_length)+1)*32);
if room!=room_fight and inv_active==true
{
//draw_sprite_stretched(spr_textbox2,0,x-3,y-3+12+(((INV_GIVE_SLOTS-1) div row_length)+1)*32,12+row_length*32,42);
//draw_sprite_stretched(spr_textbox3,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-105,camera_get_view_y(view_camera[0])+20,60,17)
//scribble("Инвентарь").starting_format("Font_main").scale(0.2).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-102,camera_get_view_y(view_camera[0])+22)
}

draw_sprite_stretched(spr_textbox3,0,x-3,y-string_height("Вам дают:")*0.22-4,string_width("Вам дают:")*0.22+2,string_height("Вам дают:")*0.22+2)
scribble("Вам дают:").starting_format("Font_main").scale(0.22).draw(x-2,y-string_height("Вам дают:")*0.22-4)

for (var i = 0; i < INV_GIVE_SLOTS; i++)
{
	var xx = x + (i mod row_length) * 32 + 2;
	var yy = y + (i div row_length) * 32 + 2;
	var hover = (inv_hover == id) and (slot_hover == i)
	draw_sprite_stretched(spr_textbox3,hover,xx,yy,32,32)

	if slot_hover == i and item_drag==-1
	{
		//if room==room_fight scribble(inventory[i].namein).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(240,40);	
		//else scribble(inventory[i].namein).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-102,y+3+12+(((INV_GIVE_SLOTS-1) div row_length)+1)*32);
	}
	if (item_drag==inventory[i].num and item_drag!=-1) or (slot_hover == i and item_drag==-1  and inv_hover==inst_my_give_inv)
	{
		if room!=room_fight scribble(inventory[i].namein).starting_format("Font_main",c_white).scale(0.16).wrap(140).line_spacing(10).draw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-102,inst_my_best_inv.y+3+12+(((INV_SLOTS-1) div inst_my_best_inv.row_length)+1)*32);
	}
	if (inventory[i].num != -1)
	{
		var alpha = 1.0
		if (inv_drag == id) and (slot_drag == i) alpha = 0.5;
		draw_set_alpha(alpha)
		draw_sprite(spr_items,inventory[i].num,xx,yy)	
		draw_set_alpha(1.0)
	}
}

if (item_drag != -1)
{
	draw_set_alpha(0.5);
	draw_sprite(spr_items,item_drag,mouse_x-16,mouse_y-16);
	draw_set_alpha(1.0)
}