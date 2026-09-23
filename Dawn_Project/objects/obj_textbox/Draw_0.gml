
if room!=room_fight
{
textbox_width=(camera_get_view_width(view_camera[0])/2);
textbox_height=(camera_get_view_height(view_camera[0])/3);
line_width = textbox_width - border*2;
}
else
{
textbox_width=320;
textbox_height=120;	
line_width = textbox_width - border*2;
}

if room!=room_fight
{
if os_type == os_android 
{
	if global.dev=1
	{
	if gamepad_is_connected(gpl()) accept_key = (gamepad_button_check_pressed(gpl(),gp_face1) or gamepad_button_check_pressed(gpl(),gp_face2));
	}
	else
	{
	if draw_char == text_length[page] and page == page_number-1 and option_number>1 accept_key = (mouse_check_button_pressed(mb_left) and (mouse_x<camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 or mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64) and (mouse_x>camera_get_view_x(view_camera[0])+138 or mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138))
	else accept_key = (mouse_check_button_pressed(mb_left) and (mouse_x<camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 or mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64))
	}
}
else  
{
	if global.dev=1
	{
	if gamepad_is_connected(gpl()) accept_key = (gamepad_button_check_pressed(gpl(),gp_face1) or gamepad_button_check_pressed(gpl(),gp_face2));
	}
	else
	{
	accept_key = (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter))	
	}
}	
}
else
{
if (obj_manager.cam_w<640) accept_key=noone
else
{
if os_type == os_android 
{
	if global.dev=1
	{
	if gamepad_is_connected(gpl()) accept_key = gamepad_button_check_pressed(gpl(),gp_face1) or gamepad_button_check_pressed(gpl(),gp_face2);
	}
	else
	{
	if draw_char == text_length[page] and page == page_number-1 and option_number>1 accept_key = (mouse_check_button_pressed(mb_left) and (mouse_x<camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 or mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64) and (mouse_x>camera_get_view_x(view_camera[0])+138 or mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138))
	else accept_key = (mouse_check_button_pressed(mb_left) and (mouse_x<camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-32 or mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-64))
	}
}
else 
{
	if global.dev=1
	{
	if gamepad_is_connected(gpl()) accept_key = gamepad_button_check_pressed(gpl(),gp_face1) or gamepad_button_check_pressed(gpl(),gp_face2);
	}
	else
	{
	accept_key = (mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter))	
	}
}	
}
}

if room = room_fight
{
if obj_manager.cam_w<640 textbox_x = 160
else textbox_x = 160;
}
else textbox_x = camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/4);

if room != room_fight textbox_y = camera_get_view_y(view_camera[0])+(camera_get_view_height(view_camera[0])/3*2)-16;
else textbox_y = 44;

if room == room_fight and obj_payer.skip_active!=0
{
obj_payer.skip_active=0;	
}
if room != room_fight
{
if keyboard_check_pressed(vk_tab)
{
obj_payer.skip_active+=1;	
}
}
if obj_payer.skip_active>2
{obj_payer.skip_active=0;}

if ((draw_char=text_length[page] and obj_payer.skip_active=1) or (obj_payer.skip_active=2) or (obj_payer.moment_skip=1 and draw_char=text_length[page])) obj_payer.skip_time++
if ((obj_payer.skip_time>=150 and obj_payer.skip_active=1) or (obj_payer.skip_active=2 and obj_payer.skip_time>=4) or (obj_payer.skip_time>=45 and obj_payer.moment_skip=1))
{obj_payer.skip_time=0;
obj_payer.skip_key=1;
}
if global.dev=1
{

if gamepad_is_connected(gpl())
{
	if gamepad_button_check_pressed(gpl(),gp_stickl) 
	{
	if obj_payer.skip_active==0 or obj_payer.skip_active==1 obj_payer.skip_active=2;
	else obj_payer.skip_active=0;
	}
	if gamepad_button_check_pressed(gpl(),gp_shoulderl) 
	{
	if obj_payer.skip_active==0 or obj_payer.skip_active==2 obj_payer.skip_active=1;
	else obj_payer.skip_active=0;
	}
}


}

if obj_payer.skip_active>=1
{draw_sprite_ext(spr_skip,obj_payer.skip_active-1,textbox_x+textbox_width+2,textbox_y+84,3,3, 0, c_white, 1)
}
if room!=room_fight typist.in(text_spd[page],0);
else
{
	if obj_manager.cam_w<640
	typist.in(0,0)
	else
	typist.in(text_spd[page],0)
}
///сет ап (начальный стафф)
if setup == false
{draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

///переключение строк(???)
for(var p = 0; p < page_number; p++)
	{text_length[p] = string_length(text[p]);	
	text_x_offset[p] = 244;
	portrait_x_offset[p] = 64;
	}

	setup=true;}

///draw_char ростёт
if text_timer<=0
{obj_payer.talk=1;
	typist.unpause();
if draw_char < text_length[page]
{draw_char+=text_spd[page];
draw_char = clamp(draw_char, 0, text_length[page]);

var _check_char = string_char_at(text[page], draw_char);
if _check_char == "." or _check_char == "?" or _check_char == "," or _check_char == "." or _check_char == "…"
{text_timer = text_time;}
}} 
else
{typist.pause();
text_timer--;}
///проверка печати + отвечает за скип и следующие строки текста
if (draw_char==text_length[page]) and (page >= page_number-1) and (__end==1)
	{
if text_end==1
		{
		obj_payer.talk=0;
		//if instance_exists(inst_timer_for_end) inst_timer_for_end.phy_position_y=-80;
		
		instance_destroy();
		}
	else
		{obj_payer.talk=1;
		}
	}

if ((accept_key and (obj_payer.skip_active!=2 or _op>=1) and obj_payer.moment_skip==0) or (obj_payer.skip_key==1 and _op==0)) and no_accept==0 and obj_inventory_give.y<=camera_get_view_y(view_camera[0])+10
{obj_payer.skip_key=0;
	if draw_char==text_length[page]
	{
		
		if page < page_number-1
		{page++;
		draw_char=0;
}
else
		{//link trow options
		if option_number > 0 {create_textbox(option_link_id[option_pos]);
		}
		if text_end==1
		{obj_payer.talk=0;
		instance_destroy();
		}
	else
		{obj_payer.talk=1;
		}
		instance_destroy();
		_op=0;
		}}
		else
{draw_char=text_length[page];
typist.skip();}}

if draw_char<1 and snd[page]!=noone
{if obj_payer._snd!=noone
{
audio_stop_sound(obj_payer._snd)
}
obj_payer._snd=snd[page]
audio_play_sound(snd[page],1,false)
}
///переменные о строении текст бокса (чтоб его построить)
var _txtb_x= textbox_x
var _txtb_y=textbox_y
txtb_img+=txtb_img_spd;
talk_img+=0.125;
txtb_spr_w=sprite_get_width(txtb_spr[page]);
txtb_spr_h=sprite_get_height(txtb_spr[page]);

//рисуем бокс для текста
var _n_w = string_width_scribble(string("[scale,0.3]")+string(talk_who[page]));
var _n_w2 = string_width_scribble(string("[scale,0.3]")+string(talk_who2[page]));
var _op_space = 20;
var _op_bord = 6;

if talk_who[page]!=" "
{
if talk_who[page]!=noone
{if talk_who_spr[page]=noone
{
draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x ,_txtb_y - _op_space,(_n_w+2*_op_bord) / txtb_spr_w,(_op_space-2)/txtb_spr_h,0,c_white,1);
scribble(string("[scale,0.3]")+string(talk_who[page]),1411351).starting_format("Font_main").draw(_txtb_x+_op_bord, _txtb_y - _op_space);
if string_starts_with(text[page],"(")
{	
	draw_sprite_stretched(spr_textbox3,0, 2+_txtb_x+string_width(string(talk_who[page]))*0.3+_op_bord*2,_txtb_y - _op_space,string_width("Думает...")*0.3+_op_bord*2,string_height("Думает...")*0.3+2
	);
	scribble(string("[scale,0.3]")+string("Думает..."),12345).starting_format("Font_main").draw(_txtb_x+_op_bord*3+(string_width(string(talk_who[page]))*0.3)+2, _txtb_y - _op_space);
}

}
else
{
draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x-81,_txtb_y - _op_space,(_n_w+2*_op_bord) / txtb_spr_w,(_op_space-2)/txtb_spr_h,0,c_white,1);
scribble(string("[scale,0.3]")+string(talk_who[page]),1411351).starting_format("Font_main").draw(_txtb_x-81+_op_bord, _txtb_y - _op_space);
if string_starts_with(text[page],"(")
{
	draw_sprite_stretched(spr_textbox3,0, _txtb_x,_txtb_y - _op_space,string_width("Думает...")*0.3+_op_bord*2,string_height("Думает...")*0.3+2);
	scribble(string("[scale,0.3]")+string("Думает..."),12345).starting_format("Font_main").draw(_txtb_x+_op_bord, _txtb_y - _op_space);
}

}
}
if talk_who2[page]!=noone
{if talk_who_spr2[page]=noone
{
draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x +textbox_width-_n_w2 -2*_op_bord,_txtb_y - _op_space,(_n_w2+2*_op_bord) / txtb_spr_w,(_op_space-2)/txtb_spr_h,0,c_white,1);
scribble(talk_who2[page],1411352).starting_format("Font_main").scale(0.3).draw(_txtb_x+ textbox_width-_n_w2-_op_bord, _txtb_y - _op_space);
}
else
{
draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x +textbox_width+81-_n_w2 -2*_op_bord,_txtb_y - _op_space,(_n_w2+2*_op_bord) / txtb_spr_w,(_op_space-2)/txtb_spr_h,0,c_white,1);
scribble(talk_who2[page],1411352).starting_format("Font_main").scale(0.3).draw(_txtb_x+81+ textbox_width-_n_w2-_op_bord, _txtb_y - _op_space);
}
}

if talk_who_spr[page]!=noone

{  if talk_who[page]=noone
	{
draw_sprite_ext(spr_textbox3,0,_txtb_x-81, _txtb_y, 4, 4, 0, c_white, 1);
	}
	else
	{
draw_sprite_ext(spr_textbox2, txtb_img,_txtb_x-81, _txtb_y, 4, 4, 0, c_white, 1);
	}

 switch (talk_who_spr[page])
	{
	case "Mike":
	switch(obj_payer.cloth)
	{case "deff":
	draw_sprite_ext(spr_face_mike,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_mike,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "school":
	draw_sprite_ext(spr_face_mike_s,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_mike,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "school_1":
	draw_sprite_ext(spr_face_mike_s_1,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_mike,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	}break;
	case "Mike_awk":
	switch(obj_payer.cloth)
	{case "deff":
	draw_sprite_ext(spr_face_mike_awk,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_mike_awk,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "school":
	draw_sprite_ext(spr_face_mike_awk_s,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_mike_awk,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "school_1":
	draw_sprite_ext(spr_face_mike_awk_s_1,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_mike_awk,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	}break;
	case "Mike_sad":
	draw_sprite_ext(spr_face_mike_sad,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if draw_char < text_length[page] and text_timer<=0 and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_talk_sad,talk_img, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Sasha":
	draw_sprite_ext(spr_face_sasha,talk_img+10, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if (draw_char < text_length[page] and text_timer<=0) and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_sasha,talk_img+10, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	}break;
	case "Anya":
	draw_sprite_ext(spr_face_anya,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);
	if (draw_char < text_length[page] and text_timer<=0) and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Anya_awk":
	draw_sprite_ext(spr_face_anya_awk,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);
	if (draw_char < text_length[page] and text_timer<=0) and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya_awk,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Anya_sur":
	draw_sprite_ext(spr_face_anya_sur,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);
	if (draw_char < text_length[page] and text_timer<=0) and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Anya_sus":
	draw_sprite_ext(spr_face_anya_sus,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);
	if (draw_char < text_length[page] and text_timer<=0) and talk_who[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya,talk_img+15, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Unknown":
	draw_sprite_ext(spr_face_unknown,talk_img+10, _txtb_x-81,_txtb_y-1,1.25,1.25,0,c_white,1);	

	break;
	
	
	}
}
if talk_who_spr2[page]!=noone
{  if talk_who2[page]=noone
	{
	draw_sprite_ext(spr_textbox3,0,_txtb_x+textbox_width+1, _txtb_y, 4, 4, 0, c_white, 1);
	}
	else
	{
	draw_sprite_ext(spr_textbox2, txtb_img,_txtb_x+textbox_width+1, _txtb_y, 4, 4, 0, c_white, 1);
	}
 switch (talk_who_spr2[page])
	{
	case "Anya":
	draw_sprite_ext(spr_face_anya,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if (draw_char < text_length[page] and text_timer<=0) and talk_who2[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Anya_awk":
	draw_sprite_ext(spr_face_anya_awk,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if (draw_char < text_length[page] and text_timer<=0) and talk_who2[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya_awk,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Anya_sur":
	draw_sprite_ext(spr_face_anya_sur,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if (draw_char < text_length[page] and text_timer<=0) and talk_who2[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Anya_sus":
	draw_sprite_ext(spr_face_anya_sus,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if (draw_char < text_length[page] and text_timer<=0) and talk_who2[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_anya,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	case "Sasha":
	draw_sprite_ext(spr_face_sasha,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	
	if (draw_char < text_length[page] and text_timer<=0) and talk_who2[page]!=noone and _font[page]=="Font_main"
	{draw_sprite_ext(spr_mouth_sasha,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);}break;
	
	case "Faceless":
	draw_sprite_ext(spr_face_faceless,talk_img+15, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	
	case "Masha":
	draw_sprite_ext(spr_face_masha,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	
	case "Mama":
	draw_sprite_ext(spr_face_mam,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	
	case "Papa":
	draw_sprite_ext(spr_face_pap,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	
	case "Adam":
	draw_sprite_ext(spr_face_adam,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	
	case "Adam0":
	draw_sprite_ext(spr_face_adam_05,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	case "Adam01":
	draw_sprite_ext(spr_face_adam_06,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	case "Adam1":
	draw_sprite_ext(spr_face_adam_1,talk_img+5, _txtb_x+textbox_width+1,_txtb_y-1,1.25,1.25,0,c_white,1);	break;
	}
}
}



//ОПЩОНС
if draw_char == text_length[page] && page == page_number-1
{
	if option_number>0
	{
	if os_type==os_android
	{
	if (mouse_x<camera_get_view_x(view_camera[0])+128 and mouse_y>camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138 and mouse_y<camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+64) option_pos -= mouse_check_button_pressed(mb_left);
	
	if (mouse_x<camera_get_view_x(view_camera[0])+128 and mouse_y>camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138 and mouse_y>camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+64) option_pos += mouse_check_button_pressed(mb_left);	
	
	option_pos = clamp(option_pos, 0, option_number-1);
	}
	else
	{
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up) + gamepad_button_check_pressed(gpl(),gp_padd) - gamepad_button_check_pressed(gpl(),gp_padu) ;
	option_pos = clamp(option_pos, 0, option_number-1);
	}
	}
	var _op_space = 20;
	var _op_bord = 6;


for (var op = 0; op < option_number; op++)
{
var _o_w = string_width(option[op])*0.3 + _op_bord*2;
var _o_h = string_height(option[op])*0.3;
if No_op=0
{_op=1;

if option_pos == op 
{if string_starts_with(text[page],"(")
{
	draw_sprite(spr_txtb_arrow,0,_txtb_x ,  _txtb_y - _op_space*option_number + _op_space*(op-1))
}
else
{
	draw_sprite(spr_txtb_arrow,0,_txtb_x ,  _txtb_y - _op_space*option_number + _op_space*op)
}
}}
//option draw
if string_starts_with(text[page],"(")
{
draw_sprite_stretched(spr_textbox1, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*(op-1),_o_w,_o_h)
scribble(option[op],1516).starting_format("Font_main").scale(0.3).draw(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number +_op_space*(op-1) -1);
}
else
{
draw_sprite_stretched(spr_textbox1, txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op,_o_w,_o_h)
scribble(option[op],1516).starting_format("Font_main").scale(0.3).draw(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number +_op_space*op -1);
}
}}
scribble_anim_shake(1,0.5)
scribble_anim_wheel(2,1,0.09)
//текст находится в _drawtext

var _drawtext = string_copy(text[page], 1, text_length[page]);
//рисуем текст(фонт, граница строки, рисовать(граница Х, граница У, тайпист)
if talk_who[page]!=" "
{
draw_sprite_ext(spr_textbox2, txtb_img,_txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);
scribble(_drawtext,2052420).starting_format(_font[page]).scale(0.3).wrap(line_width).line_spacing(16).draw(_txtb_x + border, _txtb_y + border, typist);
}

if array_length(text)>array_length(text_ext)
{
	for(var i = array_length(text_ext); i < array_length(text)+1; i++)
	{
	text_ext[i]="";
	}
}

	if text_ext[page]!="0" and text_ext[page]!=""
	{
	scribble(text_ext[page]).starting_format("Font_main").scale(0.3).draw(x + 100, y + 100);
	}
	
	
if (text_rand[0]!="" and page<rand_when[0]+rand_to_off[0] and rand_when[0]<=page) 
{	rand_alf[0]+=rand_spd[0]
	rand_move_sin[0]+=rand_move[0]/20
	if(rand_alf[0]>=90+rand_sin[0]) rand_alf[0]=90-rand_sin[0];
	if(rand_move_sin[0]>=1440) rand_move_sin[0]=0;
	scribble(text_rand[0],0).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[0])*rand_move[0]).blend(c_white,sqrt(sqr(dsin(rand_alf[0])))).draw(rand_x1[0]+dsin(rand_move_sin[0]/3)*4,rand_y1[0]+sqrt(sqr(dcos(rand_move_sin[0]/3)*4)));

}

if (text_rand[1]!="" and page<rand_when[1]+rand_to_off[1] and rand_when[1]<=page) 
{	rand_alf[1]+=rand_spd[1]
	rand_move_sin[1]+=rand_move[1]/20
	if(rand_alf[1]>=90+rand_sin[1]) rand_alf[1]=90-rand_sin[1];
	if(rand_move_sin[1]>=1440) rand_move_sin[1]=0;
	scribble(text_rand[1],1).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[1])*rand_move[1]).blend(c_white,sqrt(sqr(dsin(rand_alf[1])))).draw(rand_x1[1]+dsin(rand_move_sin[1]/3)*4,rand_y1[1]+sqrt(sqr(dcos(rand_move_sin[1]/3)*4)));

}

if (text_rand[2]!="" and page<rand_when[2]+rand_to_off[2] and rand_when[2]<=page) 
{	rand_alf[2]+=rand_spd[2]
	rand_move_sin[2]+=rand_move[2]/20
	if(rand_alf[2]>=90+rand_sin[2]) rand_alf[2]=90-rand_sin[2];
	if(rand_move_sin[2]>=1440) rand_move_sin[2]=0;
	scribble(text_rand[2],2).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[2])*rand_move[2]).blend(c_white,sqrt(sqr(dsin(rand_alf[2])))).draw(rand_x1[2]+dsin(rand_move_sin[2]/3)*4,rand_y1[2]+sqrt(sqr(dcos(rand_move_sin[2]/3)*4)));

}

if (text_rand[3]!="" and page<rand_when[3]+rand_to_off[3] and rand_when[3]<=page) 
{	rand_alf[3]+=rand_spd[3]
	rand_move_sin[3]+=rand_move[3]/20
	if(rand_alf[3]>=90+rand_sin[3]) rand_alf[3]=90-rand_sin[3];
	if(rand_move_sin[3]>=1440) rand_move_sin[3]=0;
	scribble(text_rand[3],3).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[3])*rand_move[3]).blend(c_white,sqrt(sqr(dsin(rand_alf[3])))).draw(rand_x1[3]+dsin(rand_move_sin[3]/3)*4,rand_y1[3]+sqrt(sqr(dcos(rand_move_sin[3]/3)*4)));

}

if (text_rand[4]!="" and page<rand_when[4]+rand_to_off[4] and rand_when[4]<=page) 
{	rand_alf[4]+=rand_spd[4]
	rand_move_sin[4]+=rand_move[4]/20
	if(rand_alf[4]>=90+rand_sin[4]) rand_alf[4]=90-rand_sin[4];
	if(rand_move_sin[4]>=1440) rand_move_sin[4]=0;
	scribble(text_rand[4],4).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[4])*rand_move[4]).blend(c_white,sqrt(sqr(dsin(rand_alf[4])))).draw(rand_x1[4]+dsin(rand_move_sin[4]/3)*4,rand_y1[4]+sqrt(sqr(dcos(rand_move_sin[4]/3)*4)));

}

if (text_rand[5]!="" and page<rand_when[5]+rand_to_off[5] and rand_when[5]<=page) 
{	rand_alf[5]+=rand_spd[5]
	rand_move_sin[5]+=rand_move[5]/20
	if(rand_alf[5]>=90+rand_sin[5]) rand_alf[5]=90-rand_sin[5];
	if(rand_move_sin[5]>=1440) rand_move_sin[5]=0;
	scribble(text_rand[5],5).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[5])*rand_move[5]).blend(c_white,sqrt(sqr(dsin(rand_alf[5])))).draw(rand_x1[5]+dsin(rand_move_sin[5]/3)*4,rand_y1[5]+sqrt(sqr(dcos(rand_move_sin[5]/3)*4)));

}

if (text_rand[6]!="" and page<rand_when[6]+rand_to_off[6] and rand_when[6]<=page) 
{	rand_alf[6]+=rand_spd[6]
	rand_move_sin[6]+=rand_move[6]/20
	if(rand_alf[6]>=90+rand_sin[6]) rand_alf[6]=90-rand_sin[6];
	if(rand_move_sin[6]>=1440) rand_move_sin[6]=0;
	scribble(text_rand[6],6).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[6])*rand_move[6]).blend(c_white,sqrt(sqr(dsin(rand_alf[6])))).draw(rand_x1[6]+dsin(rand_move_sin[6]/3)*4,rand_y1[6]+sqrt(sqr(dcos(rand_move_sin[6]/3)*4)));

}

if (text_rand[7]!="" and page<rand_when[7]+rand_to_off[7] and rand_when[7]<=page) 
{	rand_alf[7]+=rand_spd[7]
	rand_move_sin[7]+=rand_move[7]/20
	if(rand_alf[7]>=90+rand_sin[7]) rand_alf[7]=90-rand_sin[7];
	if(rand_move_sin[7]>=1440) rand_move_sin[7]=0;
	scribble(text_rand[7],7).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[7])*rand_move[7]).blend(c_white,sqrt(sqr(dsin(rand_alf[7])))).draw(rand_x1[7]+dsin(rand_move_sin[7]/3)*4,rand_y1[7]+sqrt(sqr(dcos(rand_move_sin[7]/3)*4)));

}

if (text_rand[8]!="" and page<rand_when[8]+rand_to_off[8] and rand_when[8]<=page) 
{	rand_alf[8]+=rand_spd[8]
	rand_move_sin[8]+=rand_move[8]/20
	if(rand_alf[8]>=90+rand_sin[8]) rand_alf[8]=90-rand_sin[8];
	if(rand_move_sin[8]>=1440) rand_move_sin[8]=0;
	scribble(text_rand[8],8).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[8])*rand_move[8]).blend(c_white,sqrt(sqr(dsin(rand_alf[8])))).draw(rand_x1[8]+dsin(rand_move_sin[8]/3)*4,rand_y1[8]+sqrt(sqr(dcos(rand_move_sin[8]/3)*4)));

}

if (text_rand[9]!="" and page<rand_when[9]+rand_to_off[9] and rand_when[9]<=page) 
{	rand_alf[9]+=rand_spd[9]
	rand_move_sin[9]+=rand_move[9]/20
	if(rand_alf[9]>=90+rand_sin[9]) rand_alf[9]=90-rand_sin[9];
	if(rand_move_sin[9]>=1440) rand_move_sin[9]=0;
	scribble(text_rand[9],9).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[9])*rand_move[9]).blend(c_white,sqrt(sqr(dsin(rand_alf[9])))).draw(rand_x1[9]+dsin(rand_move_sin[9]/3)*4,rand_y1[9]+sqrt(sqr(dcos(rand_move_sin[9]/3)*4)));

}

if (text_rand[10]!="" and page<rand_when[10]+rand_to_off[10] and rand_when[10]<=page) 
{	rand_alf[10]+=rand_spd[10]
	rand_move_sin[10]+=rand_move[10]/20
	if(rand_alf[10]>=90+rand_sin[10]) rand_alf[10]=90-rand_sin[10];
	if(rand_move_sin[10]>=1440) rand_move_sin[10]=0;
	scribble(text_rand[10],10).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[10])*rand_move[10]).blend(c_white,sqrt(sqr(dsin(rand_alf[10])))).draw(rand_x1[10]+dsin(rand_move_sin[10]/3)*4,rand_y1[10]+sqrt(sqr(dcos(rand_move_sin[10]/3)*4)));

}

if (text_rand[11]!="" and page<rand_when[11]+rand_to_off[11] and rand_when[11]<=page) 
{	rand_alf[11]+=rand_spd[11]
	rand_move_sin[11]+=rand_move[11]/20
	if(rand_alf[11]>=90+rand_sin[11]) rand_alf[11]=90-rand_sin[11];
	if(rand_move_sin[11]>=1440) rand_move_sin[11]=0;
	scribble(text_rand[11],11).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[11])*rand_move[11]).blend(c_white,sqrt(sqr(dsin(rand_alf[11])))).draw(rand_x1[11]+dsin(rand_move_sin[11]/3)*4,rand_y1[11]+sqrt(sqr(dcos(rand_move_sin[11]/3)*4)));

}

if (text_rand[12]!="" and page<rand_when[12]+rand_to_off[12] and rand_when[12]<=page) 
{	rand_alf[12]+=rand_spd[12]
	rand_move_sin[12]+=rand_move[12]/20
	if(rand_alf[12]>=90+rand_sin[12]) rand_alf[12]=90-rand_sin[12];
	if(rand_move_sin[12]>=1440) rand_move_sin[12]=0;
	scribble(text_rand[12],12).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[12])*rand_move[12]).blend(c_white,sqrt(sqr(dsin(rand_alf[12])))).draw(rand_x1[12]+dsin(rand_move_sin[12]/3)*4,rand_y1[12]+sqrt(sqr(dcos(rand_move_sin[12]/3)*4)));

}

if (text_rand[13]!="" and page<rand_when[13]+rand_to_off[13] and rand_when[13]<=page) 
{	rand_alf[13]+=rand_spd[13]
	rand_move_sin[13]+=rand_move[13]/20
	if(rand_alf[13]>=90+rand_sin[13]) rand_alf[13]=90-rand_sin[13];
	if(rand_move_sin[13]>=1440) rand_move_sin[13]=0;
	scribble(text_rand[13],13).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[13])*rand_move[13]).blend(c_white,sqrt(sqr(dsin(rand_alf[13])))).draw(rand_x1[13]+dsin(rand_move_sin[13]/3)*4,rand_y1[13]+sqrt(sqr(dcos(rand_move_sin[13]/3)*4)));

}

if (text_rand[14]!="" and page<rand_when[14]+rand_to_off[14] and rand_when[14]<=page) 
{	rand_alf[14]+=rand_spd[14]
	rand_move_sin[14]+=rand_move[14]/20
	if(rand_alf[14]>=90+rand_sin[14]) rand_alf[14]=90-rand_sin[14];
	if(rand_move_sin[14]>=1440) rand_move_sin[14]=0;
	scribble(text_rand[14],14).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[14])*rand_move[14]).blend(c_white,sqrt(sqr(dsin(rand_alf[14])))).draw(rand_x1[14]+dsin(rand_move_sin[14]/3)*4,rand_y1[14]+sqrt(sqr(dcos(rand_move_sin[14]/3)*4)));

}

if (text_rand[15]!="" and page<rand_when[15]+rand_to_off[15] and rand_when[15]<=page) 
{	rand_alf[15]+=rand_spd[15]
	rand_move_sin[15]+=rand_move[15]/20
	if(rand_alf[15]>=90+rand_sin[15]) rand_alf[15]=90-rand_sin[15];
	if(rand_move_sin[15]>=1440) rand_move_sin[15]=0;
	scribble(text_rand[15],15).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[15])*rand_move[15]).blend(c_white,sqrt(sqr(dsin(rand_alf[15])))).draw(rand_x1[15]+dsin(rand_move_sin[15]/3)*4,rand_y1[15]+sqrt(sqr(dcos(rand_move_sin[15]/3)*4)));

}

if (text_rand[16]!="" and page<rand_when[16]+rand_to_off[16] and rand_when[16]<=page) 
{	rand_alf[16]+=rand_spd[16]
	rand_move_sin[16]+=rand_move[16]/20
	if(rand_alf[16]>=90+rand_sin[16]) rand_alf[16]=90-rand_sin[16];
	if(rand_move_sin[16]>=1440) rand_move_sin[16]=0;
	scribble(text_rand[16],16).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[16])*rand_move[16]).blend(c_white,sqrt(sqr(dsin(rand_alf[16])))).draw(rand_x1[16]+dsin(rand_move_sin[16]/3)*4,rand_y1[16]+sqrt(sqr(dcos(rand_move_sin[16]/3)*4)));

}

if (text_rand[17]!="" and page<rand_when[17]+rand_to_off[17] and rand_when[17]<=page) 
{	rand_alf[17]+=rand_spd[17]
	rand_move_sin[17]+=rand_move[17]/20
	if(rand_alf[17]>=90+rand_sin[17]) rand_alf[17]=90-rand_sin[17];
	if(rand_move_sin[17]>=1440) rand_move_sin[17]=0;
	scribble(text_rand[17],17).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[17])*rand_move[17]).blend(c_white,sqrt(sqr(dsin(rand_alf[17])))).draw(rand_x1[17]+dsin(rand_move_sin[17]/3)*4,rand_y1[17]+sqrt(sqr(dcos(rand_move_sin[17]/3)*4)));

}

if (text_rand[18]!="" and page<rand_when[18]+rand_to_off[18] and rand_when[18]<=page) 
{	rand_alf[18]+=rand_spd[18]
	rand_move_sin[18]+=rand_move[18]/20
	if(rand_alf[18]>=90+rand_sin[18]) rand_alf[18]=90-rand_sin[18];
	if(rand_move_sin[18]>=1440) rand_move_sin[18]=0;
	scribble(text_rand[18],18).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[18])*rand_move[18]).blend(c_white,sqrt(sqr(dsin(rand_alf[18])))).draw(rand_x1[18]+dsin(rand_move_sin[18]/3)*4,rand_y1[18]+sqrt(sqr(dcos(rand_move_sin[18]/3)*4)));

}

if (text_rand[19]!="" and page<rand_when[19]+rand_to_off[19] and rand_when[19]<=page) 
{	rand_alf[19]+=rand_spd[19]
	rand_move_sin[19]+=rand_move[19]/20
	if(rand_alf[19]>=90+rand_sin[19]) rand_alf[19]=90-rand_sin[19];
	if(rand_move_sin[19]>=1440) rand_move_sin[19]=0;
	scribble(text_rand[19],19).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[19])*rand_move[19]).blend(c_white,sqrt(sqr(dsin(rand_alf[19])))).draw(rand_x1[19]+dsin(rand_move_sin[19]/3)*4,rand_y1[19]+sqrt(sqr(dcos(rand_move_sin[19]/3)*4)));

}

if (text_rand[20]!="" and page<rand_when[20]+rand_to_off[20] and rand_when[20]<=page) 
{	rand_alf[20]+=rand_spd[20]
	rand_move_sin[20]+=rand_move[20]/20
	if(rand_alf[20]>=90+rand_sin[20]) rand_alf[20]=90-rand_sin[20];
	if(rand_move_sin[20]>=1440) rand_move_sin[20]=0;
	scribble(text_rand[20],20).starting_format("Font_main").scale(0.3).transform(1, 1,dsin(rand_move_sin[20])*rand_move[20]).blend(c_white,sqrt(sqr(dsin(rand_alf[20])))).draw(rand_x1[20]+dsin(rand_move_sin[20]/3)*4,rand_y1[20]+sqrt(sqr(dcos(rand_move_sin[20]/3)*4)));

}