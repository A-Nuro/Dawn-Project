#macro INV_SLOTS 10
row_length =6
//inventory = array_create(INV_SLOTS,{num:-1})
inventory=[];

for (var i = 0; i < INV_SLOTS; i++){array_push(inventory,{namein:"",num:-1,colvo:-1,activ: function(){}, use_no_battle: false, hp_change: 0, sp_change: 0,})}



depth=-9997;
inv_active = false;
inv_open_with_phone=false;
inv_hover = -1;
slot_hover = -1;
inv_drag = -1;
slot_drag = -1;
item_drag = -1;
/*
mouse_over = function()
{
	slot_hover = -1;
	inv_hover = -1;
	
	var mx = mouse_x;
	var my = mouse_y;
	
		if (point_in_rectangle(mx,my,x-6,y-6,x-6+12+row_length*32,y-6+12+(((INV_SLOTS-1) div row_length)+1)*32))	
		{
			for (var i = 0; i < INV_SLOTS; i++)
			{
				var xx = x + (i mod row_length) * 32 + 2;
				var yy = y + (i div row_length) * 32 + 2;
				if (point_in_rectangle(mx,my,xx,yy,xx+32,yy+32))
				{
					slot_hover = i;
					inv_hover = id;
				}
			}
			
		}
	
}

state_free = function()
{
	mouse_over();
	if (mouse_check_button(mb_left)) and (slot_hover != -1) and (inv_hover.inventory[slot_hover].num != -1)
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
	if (!mouse_check_button(mb_left))
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
						script_execute(obj_inventory.inventory[i].activ)
						state=HURT;
						layer_sequence_headpos(unit_sequence, hurt_start);
					}
					if (inventory[i].colvo=1) inv_remove(id,inventory[i].num);
					inv_active=false;
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
				if (point_in_rectangle(mouse_x,mouse_y,x-65,y-1+64*u,x-65+42,y+42+64*u) and inventory[slot_drag].use_no_battle=true)
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
					
					if (inventory[slot_drag].colvo=1) inv_remove(id,inventory[slot_drag].num)
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
					if (point_in_rectangle(mouse_x,mouse_y,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-90+row_length*32,y+2,(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2)-90+row_length*32+32,y+2+32))
					{
						inv_remove(id,inventory[slot_drag].num);
					}
				}
				else
				{
					if (point_in_rectangle(mouse_x,mouse_y,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-90+row_length*32-30,y+2,(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0]))/2)-90+row_length*32+2,y+2+32))
					{
						inv_remove(id,inventory[slot_drag].num);
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
		if slot_drag!=-1
		{
		if (point_in_rectangle(mouse_x,mouse_y,x-65,y-1+64*u,x-65+42,y+42+64*u) and inventory[slot_drag].use_no_battle) obj_inv_ports.activ_portrets[u]=true
		else obj_inv_ports.activ_portrets[u]=false
		}
		
	}
	
}

state = state_free;*/