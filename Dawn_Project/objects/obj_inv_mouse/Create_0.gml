inv_hover = -1;
slot_hover = -1;
inv_drag = -1;
slot_drag = -1;
item_drag = -1;

mouse_over = function()
{
	slot_hover = -1;
	inv_hover = -1;
	
	var mx = mouse_x;
	var my = mouse_y;
		
		with (obj_inventory)
		{
		if id==inst_my_best_inv
		{
		if (point_in_rectangle(mx,my,x-6,y-6,x-6+12+row_length*32,y-6+12+(((INV_SLOTS-1) div row_length)+1)*32))	
		{
			
			for (var i = 0; i < INV_SLOTS; i++)
			{
				var xx = x + (i mod row_length) * 32 + 2;
				var yy = y + (i div row_length) * 32 + 2;
				if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
				{
					if item_drag == -1 window_set_cursor(cr_drag);
					obj_inv_mouse.slot_hover = i;
					obj_inv_mouse.inv_hover = id;
				}
			}
			
		}
		else 
		{
			if global.dev==0 /*and !mouse_check_button(mb_left)*/ window_set_cursor(cr_default);
			if global.dev==1 /*and !obj_payer.Gp_a*/ window_set_cursor(cr_default);
			
			//if global.dev==0 and mouse_check_button(mb_left) window_set_cursor(cr_none);
			//if global.dev==1 and obj_payer.Gp_a window_set_cursor(cr_none);
		}
		}
		if id==inst_my_big_inv
		{
		if (point_in_rectangle(mx,my,x-6,y-6,x-6+12+row_length*32,y-6+12+(((INV_BOX_SLOTS-1) div row_length)+1)*32))	
		{
			
			for (var i = 0; i < INV_BOX_SLOTS; i++)
			{
				var xx = x + (i mod row_length) * 32 + 2;
				var yy = y + (i div row_length) * 32 + 2;
				if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
				{
					if item_drag == -1 window_set_cursor(cr_drag);
					obj_inv_mouse.slot_hover = i;
					obj_inv_mouse.inv_hover = id;
				}
			}
			
		}
		else 
		{
			if global.dev==0 /*and !mouse_check_button(mb_left)*/ window_set_cursor(cr_default);
			if global.dev==1 /*and !obj_payer.Gp_a*/ window_set_cursor(cr_default);
			
			//if global.dev==0 and mouse_check_button(mb_left) window_set_cursor(cr_none);
			//if global.dev==1 and obj_payer.Gp_a window_set_cursor(cr_none);
		}
		}
		if id==inst_my_give_inv
		{
		if (point_in_rectangle(mx,my,x-6,y-6,x-6+12+row_length*32,y-6+12+(((INV_GIVE_SLOTS-1) div row_length)+1)*32))	
		{
			
			for (var i = 0; i < INV_GIVE_SLOTS; i++)
			{
				var xx = x + (i mod row_length) * 32 + 2;
				var yy = y + (i div row_length) * 32 + 2;
				if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
				{
					if item_drag == -1 window_set_cursor(cr_drag);
					obj_inv_mouse.slot_hover = i;
					obj_inv_mouse.inv_hover = id;
				}
			}
			
		}
		else 
		{
			if global.dev==0 /*and !mouse_check_button(mb_left)*/ window_set_cursor(cr_default);
			if global.dev==1 /*and !obj_payer.Gp_a*/ window_set_cursor(cr_default);
			
			//if global.dev==0 and mouse_check_button(mb_left) window_set_cursor(cr_none);
			//if global.dev==1 and obj_payer.Gp_a window_set_cursor(cr_none);
		}
		
		}
		}
	
}

state_free = function()
{
	mouse_over();
	if (mouse_check_button(mb_left) or obj_payer.Gp_a) and (slot_hover != -1) and (inv_hover.inventory[slot_hover].num != -1)
	{
		state = state_drag;
		item_drag = inv_hover.inventory[slot_hover].num;
		inv_drag = inv_hover;
		slot_drag = slot_hover;
	}
	
	for (var u = 0; u < array_length(global.team); u++)
	{
		obj_inv_ports.activ_portrets[u]=false
	}
}

state_drag = function()
{
	mouse_over();
	if (!mouse_check_button(mb_left) and !obj_payer.Gp_a)
	{
		
	for (var i = 0; i<INV_SLOTS; i++)
	{
		if room == room_fight
		{
			for (var u = 0; u < ds_list_size(global.alive_units); u++)
			{
				if slot_drag == i and position_meeting(mouse_x,mouse_y,global.alive_units[|u])
				{	
					with(global.alive_units[|u])
					{
						script_execute(inst_my_best_inv.inventory[i].activ)
						state=HURT;
						layer_sequence_headpos(unit_sequence, hurt_start);
					}
					if (inst_my_best_inv.inventory[i].colvo=1) inv_remove(inst_my_best_inv,inst_my_best_inv.inventory[i].num);
					inst_my_best_inv.inv_active=false;
					with(obj_manager)
					{
					event_user(0)
					}
				}
			}
		}
		else
		{
			if slot_drag = i
			{
			for (var u = 0; u < array_length(global.team); u++)
			{
				if instance_exists(obj_payer)
				{
					if obj_payer.faza[0]>=5
					{
					if (point_in_rectangle(mouse_x,mouse_y,x-65,y-1+64*u,x-65+42,y+42+64*u) and inst_my_best_inv.inventory[slot_drag].use_no_battle=true and obj_inventory_give.y<=camera_get_view_y(view_camera[0])+10)
					{
						with (inst_my_best_inv)
					{
					if inv_drag==inst_my_best_inv
					{
					if inventory[slot_drag].sp_change!=0 
					{
						obj_payer._sp[array_get_index(global.playable_units,global.team[u])]+=inventory[slot_drag].sp_change
						var _dmg = instance_create_depth(x-32,y-1+32+64*u,depth-1,dmg_num)
						_dmg.is_hp=false
						_dmg.num_dmg=-inventory[slot_drag].sp_change
					}
					if inventory[slot_drag].hp_change!=0 
					{
						obj_payer._hp[array_get_index(global.playable_units,global.team[u])]+=inventory[slot_drag].hp_change		
						var _dmg = instance_create_depth(x-32,y-1+32+64*u,depth-1,dmg_num)
						_dmg.is_hp=true
						_dmg.num_dmg=-inventory[slot_drag].hp_change
					}
					
					if (inventory[slot_drag].colvo=1) inv_remove(inst_my_best_inv,inventory[slot_drag].num)
					}
					}
					}
					}
				}
			}
			}
		}
		if instance_exists(obj_payer)
		{
			if obj_payer.faza[0]>=5
			{
				if room!=room_fight
				{
					if (point_in_rectangle(mouse_x,mouse_y,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-90+inst_my_best_inv.row_length*32,y+2,(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2)-90+inst_my_best_inv.row_length*32+32,y+2+32))
					{
						inv_remove(inst_my_best_inv,inventory[slot_drag].num);
					}
				}
				else
				{
					if (point_in_rectangle(mouse_x,mouse_y,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-90+inst_my_best_inv.row_length*32-30,y+2,(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2)-90+inst_my_best_inv.row_length*32+2,y+2+32))
					{
						inv_remove(inst_my_best_inv,inventory[slot_drag].num);
					}
				}
			}
		}
		
		
	}
		if (slot_hover != -1) inv_swap(inv_drag,slot_drag,inv_hover,slot_hover)
		
		state = state_free;
		item_drag = -1;
		inv_drag = -1;
		slot_drag = -1;
	}
	
	for (var u = 0; u < array_length(global.team); u++)
	{
		if slot_drag!=-1 and inv_drag==inst_my_best_inv
		{
		if (point_in_rectangle(mouse_x,mouse_y,x-65,y-1+64*u,x-65+42,y+42+64*u) and inst_my_best_inv.inventory[slot_drag].use_no_battle) obj_inv_ports.activ_portrets[u]=true
		else obj_inv_ports.activ_portrets[u]=false
		}
		
	}
	
}

state = state_free;