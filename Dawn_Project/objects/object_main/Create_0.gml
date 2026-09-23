randomize();
//show_debug_overlay(true);
global.selected_unit=noone

if os_get_language()=="ru"
	global.lang=0
else
	global.lang=1
global.rumble=0
enter_key = keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0,gp_face1)

timer=40
width = 144;
height =84;
dx=0;
dy=0;
_file_room=0;
_file_room_txt="";
x=(room_width/2)-72;
y=(room_height/2)-52;
op_border = 9;
op_space = 16;
global.screen0=0;
pos =0;
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
m_option[1,4] = "[scale,0.3]Вибрация"
m_option[1,5] = "[scale,0.3]Назад"

m_option[2,0] = "[scale,0.5]Вы уверены?"
m_option[2,1] = ""
m_option[2,2] = "[scale,0.3]Нет"
m_option[2,3] = "[scale,0.3]Да"

m_option[3,0] = "[scale,0.3]Выберите сохранение"
m_option[3,1] = ""
if file_exists("unused_sound.mp3") m_option[3,2] = "[scale,0.3]Сохранение 1"
else m_option[3,2] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_1.mp3") m_option[3,3] = "[scale,0.3]Сохранение 2"
else m_option[3,3] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_2.mp3") m_option[3,4] = "[scale,0.3]Сохранение 3"
else m_option[3,4] = "[c_gray][scale,0.3]нет данных"
m_option[3,5] = "[scale,0.3]Назад"
m_option[3,6] = "[scale,0.3]Удалить файл"

m_option[4,0] = "[scale,0.3]Выберите сохранение"
m_option[4,1] = ""
if file_exists("unused_sound.mp3") m_option[4,2] = "[scale,0.3]Сохранение 1"
else m_option[4,2] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_1.mp3") m_option[4,3] = "[scale,0.3]Сохранение 2"
else m_option[4,3] = "[c_gray][scale,0.3]нет данных"
if file_exists("unused_sound_2.mp3") m_option[4,4] = "[scale,0.3]Сохранение 3"
else m_option[4,4] = "[c_gray][scale,0.3]нет данных"
m_option[4,5] = "[scale,0.3]Назад"
}
op_lenght = 0;
menu_level = 0;
just_delite = false;
menu_level_prev = 0;
menu_titles[0]=0;
menu_titles[1]=2;
menu_titles[2]=2;
menu_titles[3]=2;
menu_titles[4]=2;

global.save_slot="";

if !file_exists("character.name")
{
	ini_open("character.name");
	ini_write_string(0,"Майк","Майк");
	ini_write_string(0,"Аня","Аня");
	ini_write_string(0,"Мама","Мама");
	ini_write_string(0,"Папа","Папа");
	ini_write_string(0,"Александр","Александр");
	ini_write_string(0,"Безликий","Безликий");
	ini_write_string(0,"Маша","Маша");
	ini_write_string(0,"Андрей","Андрей");
	ini_write_string(0,"Настя","Настя");
	ini_write_string(0,"Женя","Женя");
	ini_write_string(0,"Адам","Адам");
	ini_write_string(0,"Душа Адама","Душа Адама");
	ini_write_string(0,"Майк (маленький)","Майк (маленький)");
	
	ini_write_string(0,"Дверь","Дверь");
	ini_write_string(0,"Куст","Куст");
	ini_write_string(0,"Кладовка","Кладовка");
	ini_write_string(0,"Взрослые","Взрослые");
	ini_write_string(0,"Моя дверь","Моя дверь");
	
	ini_write_string(0,"Торговый автомат","Торговый автомат");
	
	ini_write_string(1,"Майк","Mike");
	ini_write_string(1,"Аня","Anya");
	ini_write_string(1,"Мама","Mother");
	ini_write_string(1,"Папа","Father");
	ini_write_string(1,"Александр","Alexander");
	ini_write_string(1,"Безликий","Faceless");
	ini_write_string(1,"Маша","Masha");
	ini_write_string(1,"Андрей","Andrey");
	ini_write_string(1,"Настя","Nastya");
	ini_write_string(1,"Женя","Zhenya");
	ini_write_string(1,"Адам","Adam");
	ini_write_string(1,"Душа Адама","Soul of Adam");
	ini_write_string(0,"Майк (маленький)","Mike (kid)");
	
	ini_write_string(1,"Дверь","Door");
	ini_write_string(1,"Куст","Bush");
	ini_write_string(1,"Кладовка","storage room");
	ini_write_string(1,"Взрослые","Adults");
	ini_write_string(1,"Моя дверь","My door");
	
	ini_write_string(1,"Торговый автомат","Vending machine");
	ini_close();
}
var _s1=0;
var _s2=0;
var _s3=0;

if file_exists("unused_sound.mp3")
{
	ini_open("unused_sound.mp3");
	_s1=ini_read_real("settings","room",_Room2);
	ini_close()
}
if file_exists("unused_sound_1.mp3")
{
	ini_open("unused_sound_1.mp3");
	_s2=ini_read_real("settings","room",_Room2);
	ini_close()
}
if file_exists("unused_sound_2.mp3")
{
	ini_open("unused_sound_2.mp3");
	_s3=ini_read_real("settings","room",_Room2);
	ini_close()
}

if (_s1==1) file_delete("unused_sound.mp3");
if (_s2==1) file_delete("unused_sound_1.mp3");
if (_s3==1) file_delete("unused_sound_2.mp3");