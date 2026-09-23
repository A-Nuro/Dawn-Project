
npc_doings();

if instance_exists(obj_textbox)
{
if obj_textbox.reacting[obj_textbox.page]!=-1 and obj_textbox.draw_char==0 and obj_textbox.react_who[obj_textbox.page]=npc_id
{
switch (obj_textbox.reacting[obj_textbox.page])
{
case 0:
scr_reaction("?",obj_textbox.react_scale[obj_textbox.page]);
break;
case 1:
scr_reaction("!",obj_textbox.react_scale[obj_textbox.page]);
break;
}
}
}

if global.dev=1
{
if gamepad_is_connected(gpl()) var ok = gamepad_button_check_released(gpl(),gp_face1);
}
else var ok = keyboard_check_pressed(ord("E"));

if (depth<=-9997) 
{depth=-9997}
else
{
if instance_exists(obj_follower)
{
if (obj_follower.y<y and (obj_follower.y>y-sprite_get_height(obj_follower.sprite_index))) or (obj_follower.y>y and (obj_follower.y<y+sprite_get_height(obj_follower.sprite_index))) and (x>obj_follower.x-sprite_get_width(obj_follower.sprite_index)) and (x<obj_follower.x+sprite_get_width(obj_follower.sprite_index))
{
	
if (obj_follower.y<y and (obj_follower.y>y-sprite_get_height(obj_follower.sprite_index)) and (x>obj_follower.x-sprite_get_width(obj_follower.sprite_index)) and (x<obj_follower.x+sprite_get_width(obj_follower.sprite_index)))
{
	
if obj_follower.y>obj_payer.y
{
	depth=obj_payer.depth - 2;
	obj_follower.depth= depth + 1;
}
else
{
	if obj_payer.y>y
	{
	depth=obj_payer.depth + 1;
	}
	else depth=obj_payer.depth - 1;
	obj_follower.depth= depth + 3;
}
 
}

if (obj_follower.y>y and (obj_follower.y<y+sprite_get_height(obj_follower.sprite_index)) and (x>obj_follower.x-sprite_get_width(obj_follower.sprite_index)) and (x<obj_follower.x+sprite_get_width(obj_follower.sprite_index)))
{
	
if obj_follower.y<obj_payer.y
{
	depth=obj_payer.depth + 2;
	obj_follower.depth= depth - 1;
}
else
{
	if obj_payer.y<y
	{
	depth=obj_payer.depth - 1;
	}
	else depth=obj_payer.depth + 1;
	obj_follower.depth= depth - 3;	
}
}

}
else
{
if y < obj_payer.y
{depth=obj_payer.depth + 2}
else
{depth=obj_payer.depth - 2}
}
}
else
{
if y < obj_payer.y
{depth=obj_payer.depth + 2}
else
{depth=obj_payer.depth - 2}
}
}

if ((place_meeting(x-6,y,obj_payer) or place_meeting(x,y-6,obj_payer) or place_meeting(x+sprite_get_width(sprite_index)-22,y,obj_payer) or place_meeting(x,y+sprite_get_height(sprite_index)-47,obj_payer)) and obj_payer.actions==0 and talking==1)
{
if !instance_exists(obj_talk) or obj_talk.nameing!=string("[scale,0.3]")+string(id.my_name)
{
if id.t_talk=0
{

var _talky=instance_create_depth(x+sprite_width/2-(string_width_scribble(string("[scale,0.3]")+string(id.my_name))/2), y-21, -9998, obj_talk);
_talky.nameing=string("[scale,0.3]")+string(id.my_name);

id.t_talk=1;

}
}

}
else
{
	id.t_talk=0;
}

if inst==1 or ((click == 1 or (ok or (mouse_check_button_pressed(mb_right) and (mouse_x>x-20 and mouse_x<x+sprite_width+20 and mouse_y>y-20 and mouse_y<y+sprite_height+20) and os_type=os_android) )) and (obj_payer.talk==0 or (obj_black.sprite_index=black_no or obj_black.sprite_index=black_black) and obj_black.image_index<=2) and (collision_point(obj_payer.bbox_right+6,obj_payer.bbox_bottom,id,true,false)  or collision_point(obj_payer.bbox_right+6,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_left-6,obj_payer.bbox_bottom,id,true,false) or collision_point(obj_payer.bbox_left-6,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_left,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_right,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_left,obj_payer.bbox_bottom+6,id,true,false) or collision_point(obj_payer.bbox_right,obj_payer.bbox_bottom+6,id,true,false))) and (obj_payer.actions==0 or (talking=0 and inst=0))
{
obj_payer.not_live=[];
if talking == 1
{
	inst=0;
	create_textbox(text_id);
	
}
if talking == 0 and inst=0
{
	if tp_x!=noone and tp_y!=noone
	{
		if instant = false and dumb = false
		{
		obj_payer.talk=0
		obj_payer.x=tp_x
		room_goto(_room)
		obj_payer.y=tp_y
		}
		else
		{
			if dumb = false
			{
			obj_payer.talk=1
			scr_black(black_no,-2);
			dumb = true
			}
			if (obj_black.sprite_index=black_no or obj_black.sprite_index=black_black) and obj_black.image_index<=2
			{
			instant = false
			dumb = false
			scr_black(black_no,2);
			}
		}
	}
	if (text_id!="") create_textbox(text_id);
}
}
if (char_spr != spgd) sprite_index = char_spr;

if npc_id=="anna"
{
	switch (obj_payer.faza[10])
{	

case "anna_get_tapes":
if id.sprite_index!=s_anna_gl_tapes id.sprite_index=s_anna_gl_tapes;
if image_index>=6
{
image_index=6
}
break;
}}

if npc_id=="tree_adam"
{
	switch (obj_payer.faza[10])
{	


case "tree_adam_open":	

if id.y<354.001 
{id.y+=0.001;
id.image_index=0;
}
if id.y>=354.001
{

	id.char_spr=edan_tree_open

}
if id.image_index>5 and id.sprite_index=edan_tree_open
{

	obj_payer.faza[10]="tree_adam"

}
break;

case "tree_adam":	

id.char_spr=edan_tree;
break;

case "tree_adam_no":	

id.char_spr=edan_tree_;
break;

case "tree_adam_fall":	

id.char_spr=edan_tree_fall

if id.image_index>28 and id.sprite_index=edan_tree_fall
{
	id.image_index=29

}
break;

}
}

if instance_exists(inst_mama)
{
	switch (obj_payer.faza[10])
{	
	case "mama_right":	
inst_mama.sprite_index=s_mama_sd
if inst_mama.x<obj_payer.faza[9]
{inst_mama.x+=obj_payer.faza[11];
nps_spd+=0.2;}
else
{nps_spd=3;}

break;
}
}

if instance_exists(inst_papa)
{
	switch (obj_payer.faza[10])
{	
	case "mama_right":	
inst_papa.sprite_index=s_papa_sd
if inst_papa.x<obj_payer.faza[9]
{inst_papa.x+=obj_payer.faza[11];
nps_spd+=0.4;}
else
{nps_spd=3;}

break;
}
}


if string_pos("down",obj_payer.faza[10])>0 and string_pos(id.npc_id,obj_payer.faza[10])>0
{
	switch(npc_id)
	{
		case "anna":
		id.sprite_index=s_anna_sd ///
		break;
		case "masha":
		id.sprite_index=s_masha_gd
		break;
		case "sasha":
		id.sprite_index=s_sasha_gd
		break;
		case "zhenya":
		id.sprite_index=s_zhenya_gd
		break;
		
		
	}
	if (id.y<obj_payer.faza[9] and string_pos("_s_",obj_payer.faza[10])==0) {id.y+=obj_payer.faza[11]; if (instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=1;}
	else {id.image_index=3; obj_payer.faza[9]=id.y if (instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=0; if (string_pos("_dis_",obj_payer.faza[10])>0) instance_destroy(id);}
}

if string_pos("up",obj_payer.faza[10])>0 and string_pos(id.npc_id,obj_payer.faza[10])>0
{
	switch(npc_id)
	{
		case "anna":
		id.sprite_index=s_anna_gu
		break;
		case "masha":
		id.sprite_index=s_masha_gu
		break;
		case "sasha":
		id.sprite_index=s_sasha_gd ///
		break;
		case "zhenya":
		id.sprite_index=s_zhenya_gu
		break;
		
	}
	if (id.y>obj_payer.faza[9] and string_pos("_s_",obj_payer.faza[10])==0) {id.y-=obj_payer.faza[11]; if (instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=1;}
	else {image_index=3; obj_payer.faza[9]=id.y if (instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=0; if (string_pos("_dis_",obj_payer.faza[10])>0) instance_destroy(id);}
}

if string_pos("right",obj_payer.faza[10])>0 and string_pos(id.npc_id,obj_payer.faza[10])>0
{
	switch(npc_id)
	{
		case "anna":
		id.sprite_index=s_anna_gr
		break;
		case "masha":
		id.sprite_index=s_masha_gr
		break;
		case "sasha":
		id.sprite_index=s_sasha_gd //
		break;
		
	}
	if (id.x<obj_payer.faza[9] and string_pos("_s_",obj_payer.faza[10])==0) {id.x+=obj_payer.faza[11]; if (instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=1;}
	else {image_index=3; obj_payer.faza[9]=id.x if(instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=0; if (string_pos("_dis_",obj_payer.faza[10])>0) instance_destroy(id);}
}

if string_pos("left",obj_payer.faza[10])>0 and string_pos(id.npc_id,obj_payer.faza[10])>0
{
	switch(npc_id)
	{
		case "anna":
		id.sprite_index=s_anna_gl
		break;
		case "masha":
		id.sprite_index=s_masha_gl
		break;
		case "sasha":
		id.sprite_index=s_sasha_gd ///
		break;
		
	}
	if (id.x>obj_payer.faza[9] and string_pos("_s_",obj_payer.faza[10])==0) {id.x-=obj_payer.faza[11]; if (instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=1;}
	else {image_index=3; obj_payer.faza[9]=id.x if(instance_exists(obj_textbox) and string_pos("_no",obj_payer.faza[10]) > 0) obj_textbox.no_accept=0; if (string_pos("_dis_",obj_payer.faza[10])>0) instance_destroy(id);}
}