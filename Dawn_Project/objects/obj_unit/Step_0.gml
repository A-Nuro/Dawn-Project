
if mouse_wheel_down() and obj_payer.mouse_wheel_block==0
{
	if (obj_payer.playable_team<array_length(global.team)-1) obj_payer.playable_team+=1
	else obj_payer.playable_team=0
	obj_payer.stil_moving=true
	obj_payer.mouse_wheel_block=30
}
if mouse_wheel_up() and obj_payer.mouse_wheel_block==0
{
	if (obj_payer.playable_team>0) obj_payer.playable_team-=1
	else obj_payer.playable_team=array_length(global.team)-1
	obj_payer.stil_moving=true
	obj_payer.mouse_wheel_block=30
}

if (array_get_index(global.team,object_index)==obj_payer.playable_team) global.selected_unit=id


if current[@ HP]<0
{
	current[@ HP] = 0;
	state = DEATH;
	defending = false;
	layer_sequence_headpos(unit_sequence, death_start);
}

if current[@ HP]>=base[@ HP] current[@ HP]=base[@ HP]

//current[ATK] = irandom_range(base[@ ATK]*0.9,base[@ ATK]*1.1)

if current[@ SP]>=base[@ SP] current[@ SP]=base[@ SP]

for (var i =0; i< array_length(effects); i++)
{
if array_get_index(active_effects,effects[i])==-1 and effects[i].active=true
{
array_push(active_effects,effects[i])
}

if array_get_index(active_effects,effects[i])!=-1 and effects[i].active=false
{
array_delete(active_effects,array_get_index(active_effects,effects[i]),1)
}
}

//if effects[4].active==true and is_ai1==true is_ai=false;
//if effects[4].active==false and is_ai1==true is_ai=true;

if is_ai1==true is_ai=true;
if  is_ai1==false is_ai=false;

switch(state)
{
	case IDLE:
	
	if current[@ HP]<0
	{current[@ HP] = 0;
	state = DEATH;
	layer_sequence_headpos(unit_sequence, death_start);
	}
	else
	{
	death_start=miss_end+1
	}
	
	if mouse_check_button_pressed(mb_left) and id=global.selected_unit and obj_battle_button.active == false and inst_my_best_inv.inv_active==false
	{
		layer_sequence_headpos(unit_sequence, attack_start)
		state=ATTACK
	}
	if mouse_check_button(mb_right) and id=global.selected_unit and obj_battle_button.active == false and inst_my_best_inv.inv_active==false
	state=TO_BLOCK
	
	if id!=global.selected_unit ai_doings()
	
	if (layer_sequence_get_headpos(unit_sequence)<idle_start or layer_sequence_get_headpos(unit_sequence)>idle_end) layer_sequence_headpos(unit_sequence, idle_start)
	
	if (layer_sequence_get_headpos(unit_sequence) == idle_start+1)
		{
		if idle_anim>=-20
		{
		idle_anim=round(random_range(-1,idle_end*20))
		}
		else
		{
		idle_anim+=1
		}
		}
	if (!defending){
		if (layer_sequence_get_headpos(unit_sequence) == idle_anim )
		{
			layer_sequence_headpos(unit_sequence, idle1_start);
			state = IDLE1;
		}
		else
		{
		if (layer_sequence_get_headpos(unit_sequence) > idle_end)
		{
			layer_sequence_headpos(unit_sequence, idle_start);
		}
		}
	}
	break
	
	case IDLE1:
	idle_anim=-28;

	if (layer_sequence_get_headpos(unit_sequence) = idle1_start+1)
		{
		current[ACC] = current[ACC] * 0.1;
		}
		if (layer_sequence_get_headpos(unit_sequence) > idle1_end)
		{
			current[ACC] = current[ACC] * 10;
			layer_sequence_headpos(unit_sequence, idle_start);
			state = IDLE;
		}
	
	break
	
	case ATTACK:
		
		if (array_contains(spawn_frame,round(image_index)) and !array_contains(spawned_frame,round(image_index)))
		{
			var _spw = instance_create_depth(obj_payer.phy_position_x,obj_payer.phy_position_y,depth,obj_b_atk,{
			atk_spr_spawn: self.spawn_spr,
			atk_hitbox_spawn: self.spawn_hitbox,
			baseATK: self.base[ATK]
			});
			array_push(spawned_frame,round(image_index))
		}
		
		if sprite_index != asset_get_index(atk_spr+dir) //(layer_sequence_get_headpos(unit_sequence)<attack_start or layer_sequence_get_headpos(unit_sequence)>attack_end+1) 
		{
			if (id==global.selected_unit)obj_payer.battle=1
			layer_sequence_headpos(unit_sequence, attack_start)
			ds_list_clear(hit_by_attack)
			sprite_index = asset_get_index(atk_spr+dir)
			image_index = 0
		}
		
		mask_index = asset_get_index(atk_hitbox+dir)
		var hit_by_attack_now = ds_list_create();
		var hits = instance_place_list(x,y,obj_unit,hit_by_attack_now,false);
		if (hits>0)
		{
			for (var i = 0; i < hits; i++)
			{
				//not yet hitted
				var hitID = hit_by_attack_now[| i];
				if (ds_list_find_index(hit_by_attack,hitID) == -1 and hitID.state!=DEATH)
				{
					ds_list_add(hit_by_attack,hitID);
					var _damagin = current[ATK]
					with (hitID)
					{
						layer_sequence_headpos(unit_sequence, hurt_start)
						state = HURT;
						damage_unit(_damagin,false,false);
					}
				}
			}
		}
		ds_list_destroy(hit_by_attack_now);
		mask_index = asset_get_index(def_spr+dir);

		if (layer_sequence_get_headpos(unit_sequence) >= attack_end) or (floor(image_index) == image_number - 1)
		{
			//turn_finished = true;
			spawned_frame=[]
			if (id==obj_b_atk) instance_destroy()
			if (id==global.selected_unit) obj_payer.battle=0
			sprite_index = asset_get_index(def_spr+dir)
			layer_sequence_headpos(unit_sequence, idle_start);
			state = IDLE;	
		}
	break
	
	case HURT:
		if (sprite_index != asset_get_index(hur_spr)) sprite_index = asset_get_index(hur_spr)
		
		if (layer_sequence_get_headpos(unit_sequence) >= hurt_end)// or (floor(image_index) == image_number - 1)
		{
			
			if (current[@ HP] > 0)
			{
			sprite_index = asset_get_index(def_spr+dir)
			layer_sequence_headpos(unit_sequence, idle_start);
			incoming_damage = 0;
			state = IDLE;
			}
			else
			{
			layer_sequence_headpos(unit_sequence, death_start);
			state = DEATH;
			}
		}
	
	break
	
	case MISS:

		if (layer_sequence_get_headpos(unit_sequence) > miss_end)
		{	
			
			layer_sequence_headpos(unit_sequence, idle_start);
			state = IDLE;
		}
	
	break
	
	case DEATH:
	defending = false;
	//ds_list_delete(global.units,ds_list_find_index(global.units,id))
		if (layer_sequence_get_headpos(unit_sequence) > death_end)
		{
			if current[@ HP] <= 0
			{
			death_start=death_end-2
			layer_sequence_headpos(unit_sequence, death_end-2)
			turn_finished=true;
			}
			else
			{
			death_start=miss_end+1
			layer_sequence_headpos(unit_sequence, idle_start);
			state = IDLE;
			}
		}
	break
	
	case TO_BLOCK:
	if (layer_sequence_get_headpos(unit_sequence)<to_block_start or layer_sequence_get_headpos(unit_sequence)>to_block_end+1) layer_sequence_headpos(unit_sequence, to_block_start)
		if mouse_check_button_pressed(mb_left) 
		{
			layer_sequence_headpos(unit_sequence, attack_start)
			state=ATTACK
		}
		if !mouse_check_button(mb_right)
		{
			layer_sequence_headpos(unit_sequence, idle_start)
			state=IDLE
		}
		if (layer_sequence_get_headpos(unit_sequence) > to_block_end)
		{
			layer_sequence_headpos(unit_sequence, block_start);
			state = BLOCK;
		}
	break
	
	case BLOCK:
		if mouse_check_button_pressed(mb_left) 
		{
			layer_sequence_headpos(unit_sequence, attack_start)
			state=ATTACK
		}
		if !mouse_check_button(mb_right)
		{
			layer_sequence_headpos(unit_sequence, idle_start)
			state=IDLE
		}
		if (layer_sequence_get_headpos(unit_sequence) > block_end)
		{
			layer_sequence_headpos(unit_sequence, block_start);
		}
	break
//incoming_damage = 0; -(current[@ DEF]*0.75))	
	case BLOCK_HURT:


		if (layer_sequence_get_headpos(unit_sequence) == block_hurt_start+30)
		{	
			if global.selected_unit.selected_skill!=-1 //and global.selected_unit.selected_skill.type != skill_type.physic
		{
		script_execute(global.selected_unit.selected_skill.doing)
		if eff_need_change>-1
		{
		change_eff(eff_need_change)
		}
		}
		else
		{
			if global.selected_unit.ignore_block==false
				damage_unit(incoming_damage/1.6,global.selected_unit.ignore_def,global.selected_unit.ignore_rand);
			else
				damage_unit(incoming_damage,global.selected_unit.ignore_def,global.selected_unit.ignore_rand);
		}
		}
		if (layer_sequence_get_headpos(unit_sequence) > block_hurt_end)
		{
	
			if (current[@ HP] > 0)
			{
			layer_sequence_headpos(unit_sequence, block_start);
			incoming_damage = 0;
			state = BLOCK;
			}
			else
			{
			layer_sequence_headpos(unit_sequence, death_start);
			state = DEATH;
			}
		}
	
	break
	
	case BLOCK_MISS:


		if (layer_sequence_get_headpos(unit_sequence) > block_hurt_end)
		{	
			layer_sequence_headpos(unit_sequence, block_start);
			state = BLOCK;
		}
	break
	
	case CAST:
		if (layer_sequence_get_headpos(unit_sequence) == cast_start+1)
		{
			use_skill_points(selected_skill.cost);
		}
		if (layer_sequence_get_headpos(unit_sequence) >= cast_end)
		{
			turn_finished = true;
			selected_skill =-1;
			layer_sequence_headpos(unit_sequence, idle_start);
			state = IDLE;
		}
	break
		
	case NO_THING:
		if (layer_sequence_get_headpos(unit_sequence) > no_thing_end)
		{
			turn_finished = true;
			layer_sequence_headpos(unit_sequence, idle_start);
			state = IDLE;	
		}
	break
}
/*
if (global.targeting or global.skill_targeting) and ((position_meeting(obj_cursor.x, obj_cursor.y+29, id) and obj_cursor.add=-30) or (position_meeting(obj_cursor.x, obj_cursor.y+35, id) and obj_cursor.add=0))
{draw_target = true}
else draw_target = false;*/

/*
if obj_manager.cam_w<500
{
for(var t = 0; t<ds_list_size(global.selected_targets); t++)
{
	if id!=global.selected_unit and id!=global.selected_targets[|t]
	{
		for (var s = 0; s< array_length(layer_sequence_get_instance(id.unit_sequence).activeTracks); s++)
		{
			layer_sequence_get_instance(id.unit_sequence).activeTracks[s].colormultiply=[0.4,1,1,1]
		}	
	}
	else
	{
		for (var s = 0; s< array_length(layer_sequence_get_instance(id.unit_sequence).activeTracks); s++)
		{
			layer_sequence_get_instance(id.unit_sequence).activeTracks[s].colormultiply=[1,1,1,1]
		}		
	}
}
}
else
{
	for (var s = 0; s< array_length(layer_sequence_get_instance(id.unit_sequence).activeTracks); s++)
	{
		if (y=320-(abs(4-(cur_pos+0.5))+0.5)*32-30 and id.x==obj_cursor.x and !(obj_cursor.y<=id.y and (global.targeting or global.skill_targeting))) or (id.y>=obj_cursor.y+26 and id.x==obj_cursor.x and ds_list_find_index(global.good_team,id)!=-1 and (global.targeting or global.skill_targeting))
		{
		layer_sequence_get_instance(id.unit_sequence).activeTracks[s].colormultiply=[0.6,1,1,1]
		if (ds_list_find_index(global.bad_team,id)!=-1) layer_element_move(id.unit_sequence,layer_get_id("sequences_back"));
		if (ds_list_find_index(global.good_team,id)!=-1) layer_element_move(id.unit_sequence,layer_get_id("sequences"));
		}
		else
		{
		layer_sequence_get_instance(id.unit_sequence).activeTracks[s].colormultiply=[1,1,1,1]
		if (ds_list_find_index(global.bad_team,id)!=-1) layer_element_move(id.unit_sequence,layer_get_id("sequences_back"));
		if (ds_list_find_index(global.good_team,id)!=-1) layer_element_move(id.unit_sequence,layer_get_id("sequences"));
		}
	}		
}*/

//if (!global.targeting and !global.skill_targeting) multi_draw = false;

if id!=obj_b_atk
{/*
layer_sequence_x(id.unit_sequence,id.x)	
layer_sequence_y(id.unit_sequence,id.y);*/
}
/*
if global.selected_unit!=noone
{
	if (instance_position(x+32,y+34,obj_unit)!=id) and id!=global.selected_unit and ds_list_find_index(global.bad_team,id)!=-1
	{
		y=320-(abs(4-(cur_pos+0.5))+0.5)*32-30;
		if int==false and id.x==obj_cursor.x
		{
			obj_cursor.add-=30;
		}
		int=true;
	}
	else
	{
		if int==true
		{
			switch (ds_list_size(global.good_team))
			{
			case 1:
			if (global.good_team[|0].cur_pos!=id.cur_pos) 
			{
				id.y+=30;
				obj_cursor.add=0;
				int=false
			}
			break;
			case 2:
			if (global.good_team[|0].cur_pos!=id.cur_pos and global.good_team[|1].cur_pos!=id.cur_pos) 
			{
				id.y+=30;
				obj_cursor.add=0;
				int=false
			}
			break
			case 3:
			if (global.good_team[|0].cur_pos!=id.cur_pos and global.good_team[|1].cur_pos!=id.cur_pos and global.good_team[|2].cur_pos!=id.cur_pos) 
			{
				id.y+=30;
				obj_cursor.add=0;
				int=false
			}
			break;
			}
		}
	}
}

