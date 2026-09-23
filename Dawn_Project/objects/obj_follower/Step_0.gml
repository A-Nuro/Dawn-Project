
if y < obj_payer.y
{depth=obj_payer.depth + 1}
else
{depth=obj_payer.depth - 1}

follower_doings();
if global.dev=1
{

if gamepad_is_connected(gpl()) var ok = gamepad_button_check_released(gpl(),gp_face1);

}
else var ok = keyboard_check_pressed(ord("E"));


if ((click == 1 or (ok or (mouse_check_button_pressed(mb_right) and os_type=os_android) )) and obj_payer.talk==0 and (collision_point(obj_payer.bbox_right+6,obj_payer.bbox_bottom,id,true,false)  or collision_point(obj_payer.bbox_right+6,obj_payer.bbox_top,id,true,false) or collision_point(obj_payer.bbox_left-6,obj_payer.bbox_bottom,id,true,false) or collision_point(obj_payer.bbox_left-6,obj_payer.bbox_top,id,true,false) or collision_point(obj_payer.bbox_left,obj_payer.bbox_top,id,true,false) or collision_point(obj_payer.bbox_right,obj_payer.bbox_top,id,true,false) or collision_point(obj_payer.bbox_left,obj_payer.bbox_bottom+6,id,true,false) or collision_point(obj_payer.bbox_right,obj_payer.bbox_bottom+6,id,true,false))) and obj_payer.actions==0
{

	create_textbox(text_id);


}
if npc_id="anna"
{

x = obj_payer.follow_x[20];
y = obj_payer.follow_y[20]-2;


	if (x != xprevious or y != yprevious) 
	{
	image_index=obj_payer.follow_image[0];
	}
	else
	{
	image_index=3	
	}
	switch(obj_payer.follow_sprite[20]){
		case spsd_: case spgd_: case spgd_s: case spgd_s_1:
		sprite_index = s_anna_sd; break;
		
		case spsu_: case spgu_: case spgu_s: case spgu_s_1:
		sprite_index = s_anna_gu; break;
		
		case spsl_: case spgl_: case spgl_s: case spgl_s_1:
		sprite_index = s_anna_gl; break;
		
		case spsr_: case spgr_: case spgr_s: case spgr_s_1:
		sprite_index = s_anna_gr; break;
	}
	
	
}

if npc_id="alt_edan"
{
x = obj_payer.follow_x[45];
	y = obj_payer.follow_y[45];
if (x != xprevious or y != yprevious) 
	{
	image_index=obj_payer.follow_image[0];
	}
	else
	{
	image_index=3	
	}
	switch(obj_payer.follow_sprite[45]){
		case spgd_: sprite_index = s_anna_sd; break;
		case spgd_s: sprite_index = s_anna_sd; break;
		
		case spgu_: sprite_index = s_anna_gu; break;
		case spgu_s: sprite_index = s_anna_gu; break;
		
		case spgl_: sprite_index = s_anna_gl; break;
		case spgl_s: sprite_index = s_anna_gl; break;
		
		case spgr_: sprite_index = s_anna_gr; break;
		case spgr_s: sprite_index = s_anna_gr; break;
	}
	
	
}


if x<obj_payer.x-85 x = obj_payer.x
if x>obj_payer.x+85 x = obj_payer.x
if y<obj_payer.y-85 y = obj_payer.y
if y>obj_payer.y+85 y = obj_payer.y
