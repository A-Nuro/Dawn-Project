if keyboard_check_pressed(vk_escape)
{
if (menu_level==2) 
{
	if (just_delite==true) menu_level=3;
	else menu_level=4;
}
else menu_level=0;
}
if menu_level_prev!=menu_level
{
pos=0;
menu_level_prev=menu_level;
}
if (menu_level!=3 and menu_level!=2 and just_delite==true) just_delite=false;
if global.lang>1 global.lang=0;

if os_type = os_android
{
	var enter_key =(device_mouse_x(0)>128 and device_mouse_y(0)<camera_get_view_height(view_camera[0])-138 and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(vk_enter);
	
	var enter_key =(device_mouse_x(0)>128 and device_mouse_y(0)<camera_get_view_height(view_camera[0])-138 and mouse_check_button_pressed(mb_left)) or gamepad_button_check_pressed(gpl(),gp_face1) or keyboard_check_pressed(vk_enter);
	
}
else
{
	if global.dev=1
	{
	if gamepad_is_connected(gpl()) var enter_key = gamepad_button_check_pressed(gpl(),gp_face1) or keyboard_check_pressed(vk_enter);
	}
	else
	{
	var enter_key = keyboard_check_pressed(vk_enter)	
	}
}

if os_type = os_android
{
if obj_black.black=no_no
{
	var up_key =((device_mouse_x(0)>=camera_get_view_x(view_camera[0])+45 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+82 and device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+40 and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+3) and device_mouse_check_button_pressed(0,mb_left));
	var down_key =((device_mouse_x(0)>=camera_get_view_x(view_camera[0])+45 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+82 and  device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+124 and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+87) and device_mouse_check_button_pressed(0,mb_left));
	
var up_key =((device_mouse_x(0)>=camera_get_view_x(view_camera[0])+45 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+82 and device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+40 and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+3) and device_mouse_check_button_pressed(0,mb_left)) or gamepad_button_check_pressed(gpl(),gp_padu);
var down_key =((device_mouse_x(0)>=camera_get_view_x(view_camera[0])+45 and device_mouse_x(0)<=camera_get_view_x(view_camera[0])+82 and  device_mouse_y(0)<=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+124 and device_mouse_y(0)>=camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-138+87) and device_mouse_check_button_pressed(0,mb_left)) or gamepad_button_check_pressed(gpl(),gp_padd);
	
}
else
{var up_key = noone;
var down_key = noone;
}
}
else
{
if obj_black.black=no_no
{
	if global.dev=1
	{
		if gamepad_is_connected(gpl())
		{
		var up_key = gamepad_button_check_pressed(gpl(),gp_padu);
		var down_key = gamepad_button_check_pressed(gpl(),gp_padd);
		}
	}
	else
	{
	var up_key = keyboard_check_pressed(vk_up)
	var down_key = keyboard_check_pressed(vk_down)	
	}
}
else
{var up_key = noone;
var down_key = noone;
	}
}

if global.lang==0
{
m_option[0, 0] = "[scale,0.3]Новая игра";
m_option[0, 1] = "[scale,0.3]Продолжить";
m_option[0, 2] = "[scale,0.3]Настройки";
m_option[0, 3] = "[scale,0.3]Выход";
window_set_caption("Проект Рассвет");
//settings
m_option[1,0] = "[scale,0.4]Настройки"
m_option[1,1] = ""
m_option[1,2] = "[scale,0.3]Полный экран"
m_option[1,3] = "[scale,0.3]Язык"
m_option[1,4] = "[c_gray][scale,0.3]Управление (не доступно)"
m_option[1,5] = "[scale,0.3]Назад"

m_option[2,0] = "[scale,0.4]Вы уверены?"
m_option[2,1] = ""
m_option[2,2] = "[scale,0.3]Нет"
m_option[2,3] = "[scale,0.3]Да"

m_option[3,0] = "[scale,0.4]Выберите сохранение"
m_option[3,1] = ""
if file_exists("unused_sound.mp3") m_option[3,2] = "[scale,0.3]Сохранение 1"
else m_option[3,2] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_1.mp3") m_option[3,3] = "[scale,0.3]Сохранение 2"
else m_option[3,3] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_2.mp3") m_option[3,4] = "[scale,0.3]Сохранение 3"
else m_option[3,4] = "[c_gray][scale,0.3]нет данных"
m_option[3,5] = "[scale,0.3]Назад"
if just_delite==false
	m_option[3,6] = "[scale,0.3]Удалить файл"
else
	m_option[3,6] = "[scale,0.3]Отмена"

m_option[4,0] = "[scale,0.4]Выберите сохранение"
m_option[4,1] = ""
if file_exists("unused_sound.mp3") m_option[4,2] = "[scale,0.3]Сохранение 1"
else m_option[4,2] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_1.mp3") m_option[4,3] = "[scale,0.3]Сохранение 2"
else m_option[4,3] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_2.mp3") m_option[4,4] = "[scale,0.3]Сохранение 3"
else m_option[4,4] = "[c_gray][scale,0.3]нет данных"
m_option[4,5] = "[scale,0.3]Назад"
}
else
{
m_option[0, 0] = "[scale,0.3]New game";
m_option[0, 1] = "[scale,0.3]Continue";
m_option[0, 2] = "[scale,0.3]Settings";
m_option[0, 3] = "[scale,0.3]Exit";
window_set_caption("Project Dawn");
//settings
m_option[1,0] = "[scale,0.4]Settings"
m_option[1,1] = ""
m_option[1,2] = "[scale,0.3]Full screen"
m_option[1,3] = "[scale,0.3]Language"
m_option[1,4] = "[c_gray][scale,0.3]Controls (unavailabe)"
m_option[1,5] = "[scale,0.3]Back"

m_option[2,0] = "[scale,0.4]Are you sure?"
m_option[2,1] = ""
m_option[2,2] = "[scale,0.3]No"
m_option[2,3] = "[scale,0.3]Yes"

m_option[3,0] = "[scale,0.4]Choose save file"
m_option[3,1] = ""
if file_exists("unused_sound.mp3") m_option[3,2] = "[scale,0.3]Save 1"
else m_option[3,2] = "[c_gray][scale,0.3]no data"
if file_exists("unused_sound_1.mp3") m_option[3,3] = "[scale,0.3]Save 2"
else m_option[3,3] = "[c_gray][scale,0.3]no data"
if file_exists("unused_sound_2.mp3") m_option[3,4] = "[scale,0.3]Save 3"
else m_option[3,4] = "[c_gray][scale,0.3]no data"
m_option[3,5] = "[scale,0.3]Back"
if just_delite==false
	m_option[3,6] = "[scale,0.3]Delete file"
else
	m_option[3,6] = "[scale,0.3]Cancel"

m_option[4,0] = "[scale,0.4]Choose save file"
m_option[4,1] = ""
if file_exists("unused_sound.mp3") m_option[4,2] = "[scale,0.3]Save 1"
else m_option[4,2] = "[c_gray][scale,0.3]no data"
if file_exists("unused_sound_1.mp3") m_option[4,3] = "[scale,0.3]Save 2"
else m_option[4,3] = "[c_gray][scale,0.3]no data"
if file_exists("unused_sound_2.mp3") m_option[4,4] = "[scale,0.3]Save 3"
else m_option[4,4] = "[c_gray][scale,0.3]no data"
m_option[4,5] = "[scale,0.3]Back"
}
op_lenght = array_length(m_option[menu_level]);

if gamepad_is_connected(gpl()) and global.dev==1
{
	if down_key or up_key gamepad_set_vibration(gpl(),0.2,0.2)
	if enter_key and obj_black.image_index<4 gamepad_set_vibration(gpl(),1,1)
	if !(down_key or up_key or enter_key) or obj_black.image_index>4 gamepad_set_vibration(gpl(),0,0)
}
	


pos += down_key - up_key;
if pos >= op_lenght {pos=0};
if pos < 0 {pos=op_lenght-1};
if global.screen0>1
{global.screen0=0}
if global.screen0=0
{window_set_fullscreen(true);}
else
{window_set_fullscreen(false);}

if enter_key or timer<40{
	
var _sml = menu_level;

	
switch (menu_level)
{
	case 0:
	switch(pos){
	
	case 0: menu_level=4; break;	
	case 1:menu_level = 3; break;
	case 2: menu_level = 1; break;
	case 3: game_end(); break;
	}
break;

	case 1: 
		switch(pos){
		case 2:  global.screen0+=1; break;
		case 3:  global.lang+=1; break;
		case 4: break;
		case 5: menu_level=0; break;
		}
	break;
	case 2:
	if (just_delite==false)
	{
		switch(pos){
		case 2:  menu_level=4; global.save_slot=""; break;
		case 3: if timer=40{scr_black(black_no,-1.5)}; new_save(global.save_slot); break;
		}
	}
	else
	{
		switch(pos){
		case 2:  menu_level=3; global.save_slot=""; just_delite=false; break;
		case 3: file_delete(global.save_slot); menu_level=3; just_delite=false break;
		}
	}
	break;
	
	case 3:
	if (just_delite==false)
	{
		switch(pos){
		case 2: if timer=40 and file_exists("unused_sound.mp3"){scr_black(black_no,-1.5)}; load_save("unused_sound.mp3"); break;
		case 3: if timer=40 and file_exists("unused_sound_1.mp3"){scr_black(black_no,-1.5)}; load_save("unused_sound_1.mp3"); break;
		case 4: if timer=40 and file_exists("unused_sound_2.mp3"){scr_black(black_no,-1.5)}; load_save("unused_sound_2.mp3"); break;
		case 5: menu_level = 0; global.save_slot=""; break;
		case 6: just_delite=true; break;
		}
	}
	else
	{
		switch(pos){
		case 2: if file_exists("unused_sound.mp3") {global.save_slot="unused_sound.mp3"; menu_level = 2;}; break;
		case 3: if file_exists("unused_sound_1.mp3") {global.save_slot="unused_sound_1.mp3"; menu_level = 2;} break;
		case 4: if file_exists("unused_sound_2.mp3") {global.save_slot="unused_sound_2.mp3"; menu_level = 2;} break;
		case 5: menu_level = 0; global.save_slot=""; break;
		case 6: just_delite=false; break;
		}
	}
	break;
	
	case 4:
		switch(pos){
		case 2:
		if file_exists("unused_sound.mp3") {global.save_slot="unused_sound.mp3"; menu_level = 2;}
		else {if timer=40{scr_black(black_no,-1.5)}; new_save("unused_sound.mp3");}
		break;
		case 3:
		if file_exists("unused_sound_1.mp3") {global.save_slot="unused_sound_1.mp3"; menu_level = 2;}
		else {if timer=40{scr_black(black_no,-1.5)}; new_save("unused_sound_1.mp3");}
		break;
		case 4:
		if file_exists("unused_sound_2.mp3") {global.save_slot="unused_sound_2.mp3"; menu_level = 2;}
		else {if timer=40{scr_black(black_no,-1.5)}; new_save("unused_sound_2.mp3");}
		break;
		case 5: menu_level = 0; global.save_slot=""; break;;
		}
	break;
	
}

if _sml != menu_level {pos=2};

op_lenght = array_length(m_option[menu_level]);
}

if pos<menu_titles[menu_level]
{
if up_key
	{pos=array_length(m_option[menu_level])-1;}
else
	{pos=menu_titles[menu_level];}
}

