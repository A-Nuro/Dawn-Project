draw_sprite_stretched(spr_textbox, 0, x-40, y-10,225,145);
draw_sprite_stretched(sprite_index, 0, x-dx, y+dy,width,height);
switch(menu_level)
{
case 0:
sprite_index=spr_textbox;
if (height>84) height-=max((height-84)/10,0.1);
if (height<84) height+=max((84-height)/10,0.1);
if (width>144) width-=max((width-144)/10,0.1);
if (width<144) width+=max((144-width)/10,0.1);
if (dx>0) dx-=max((dx-1)/10,0.1);
if (dx<0) dx+=max((1-dx)/10,0.1);
if (dy>0) dy-=max((dy-1)/10,0.1);
if (dy<0) dy+=max((1-dy)/10,0.1);
break;
case 1:
sprite_index=spr_textbox;
if (height>118) height-=max((height-118)/10,0.01);
if (height<188) height+=max((118-height)/10,0.01);
if (width>144) width-=max((width-144)/10,0.01);
if (width<144) width+=max((144-width)/10,0.01);
if (dx>0) dx-=max((dx-1)/10,0.01);
if (dx<0) dx+=max((1-dx)/10,0.01);
if (dy>0) dy-=max((dy-1)/10,0.01);
if (dy<0) dy+=max((1-dy)/10,0.01);
break;
case 2:
switch (global.lang)
{
	case 0:
	if (just_delite==true) {draw_sprite_stretched(spr_textbox, 0, x-202, y-11,175,72); scribble("Данное сохранение будет удалено, его восстановление будет невозможно").starting_format("Font_main").scale(0.26).wrap(180).draw(x-198, y-8);}
	else {draw_sprite_stretched(spr_textbox, 0, x-202, y-11,187,72) scribble("Прошлое сохранение в этой ячейке будет удалено без возможности восстановления").starting_format("Font_main").scale(0.26).wrap(180).draw(x-198, y-8);}
	break;
	case 1:
	if (just_delite==true) {draw_sprite_stretched(spr_textbox, 0, x-202, y-11,175,72); scribble("This one save file will be deleted, without recovery option possible").starting_format("Font_main").scale(0.26).wrap(180).draw(x-198, y-8);}
	else {draw_sprite_stretched(spr_textbox, 0, x-202, y-11,187,72) scribble("Previous save file in this spot will be deleted without any recovery option").starting_format("Font_main").scale(0.26).wrap(180).draw(x-198, y-8);}
	break;
}
sprite_index=spr_textbox3;
if (height>92) height-=max((height-92)/10,0.01);
if (height<92) height+=max((92-height)/10,0.01);
if (width>158) width-=max((width-158)/10,0.01);
if (width<158) width+=max((158-width)/10,0.01);
if (dx>-9) dx-=min((dx-9)/10,0.01);
if (dx<-9) dx+=min((9-dx)/10,0.01);
if (dy>0) dy-=max((dy-1)/10,0.01);
if (dy<0) dy+=max((1-dy)/10,0.01);
break;
case 3:
if (just_delite==true) sprite_index=spr_textbox3;
else sprite_index=spr_textbox;
if (height>92) height-=max((height-92)/10,0.01);
if (height<92) height+=max((92-height)/10,0.01);
if (width>158) width-=max((width-158)/10,0.01);
if (width<158) width+=max((158-width)/10,0.01);
if (dx>-9) dx-=min((dx-9)/10,0.01);
if (dx<-9) dx+=min((9-dx)/10,0.01);
if (dy>40) dy-=max((dy-40)/10,0.01);
if (dy<40) dy+=max((40-dy)/10,0.01);
switch(pos){
		case 2: 
		if file_exists("unused_sound.mp3")
		{
			ini_open("unused_sound.mp3");
			_file_room = ini_read_real("settings","room",Main_menu);
			ini_close();
		}
		else _file_room = 0;
		break;
		case 3: 
		if file_exists("unused_sound_1.mp3")
		{
			ini_open("unused_sound_1.mp3");
			_file_room = ini_read_real("settings","room",Main_menu);
			ini_close();
		}
		else _file_room = 0;
		break;
		case 4: 
		if file_exists("unused_sound_2.mp3")
		{
			ini_open("unused_sound_2.mp3");
			_file_room = ini_read_real("settings","room",Main_menu);
			ini_close();
		}
		else _file_room = 0;
		break;
		case 5:
		case 6:
		_file_room = 0;
		break;
		}
break;
case 4:
sprite_index=spr_textbox;
if (height>72) height-=max((height-72)/10,0.01);
if (height<72) height+=max((72-height)/10,0.01);
if (width>158) width-=max((width-158)/10,0.01);
if (width<158) width+=max((158-width)/10,0.01);
if (dx>-9) dx-=min((dx-9)/10,0.01);
if (dx<-9) dx+=min((9-dx)/10,0.01);
if (dy>40) dy-=max((dy-40)/10,0.01);
if (dy<40) dy+=max((40-dy)/10,0.01);
switch(pos){
		case 2: 
		if file_exists("unused_sound.mp3")
		{
			ini_open("unused_sound.mp3");
			_file_room = ini_read_real("settings","room",Main_menu);
			ini_close();
		}
		else _file_room = 0;
		break;
		case 3: 
		if file_exists("unused_sound_1.mp3")
		{
			ini_open("unused_sound_1.mp3");
			_file_room = ini_read_real("settings","room",Main_menu);
			ini_close();
		}
		else _file_room = 0;
		break;
		case 4: 
		if file_exists("unused_sound_2.mp3")
		{
			ini_open("unused_sound_2.mp3");
			_file_room = ini_read_real("settings","room",Main_menu);
			ini_close();
		}
		else _file_room = 0;
		break;
		case 5: _file_room = 0; break;
		}
break;
}

if (menu_level!=3 and menu_level!=4) _file_room = 0;
if _file_room!=0
{
	switch(_file_room)
	{
		case 4: _file_room_txt="Остановка"; break
		case 5: _file_room_txt="Дом (первый этаж)"; break
		case 6: _file_room_txt="Дом (второй этаж этаж)"; break
		case 7: _file_room_txt="Дом (моя комната)"; break
		case 8: _file_room_txt="Колыбель"; break
		case 9: _file_room_txt="Главная улица"; break
		case 10: _file_room_txt="Школа"; break
		default: _file_room_txt="???"; break;
	}
	draw_sprite_stretched(spr_textbox2, 0, x+190, y-10,120,60);
	scribble("Локация:").starting_format("Font_main").scale(0.25).draw(x+195, y);
	scribble(_file_room_txt).starting_format("Font_main").scale(0.25).draw(x+195, y+15);
}
else _file_room_txt=""

for (var i = 0; i < op_lenght; i++){
var _c = c_white;

if pos == i{_c = c_yellow};



scribble(m_option[menu_level, i]).starting_format("Font_main").blend(_c,1).draw(x+72-string_width_scribble(m_option[menu_level, i])/2, y+op_border + op_space*i);


}