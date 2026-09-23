if room != Main_menu and room != room_fight
{
for (var i=1; i <array_length(global.main_quests); i++)
{
with(global.main_quests[i])
{	draw_set_font(Font_main);

	if activation == 1
	{

	if instance_exists(obj_textbox)
	{
		obj_textbox.no_accept=1;
		obj_payer.skip_active=0;
	}

	draw_sprite_stretched_ext(Sprite139,0,min(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width(name)*0.15-5,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width("НОВЫЙ КВЕСТ:")*0.15-5),camera_get_view_y(view_camera[0])+85,max(string_width(name)*0.3+10,string_width("НОВЫЙ КВЕСТ:")*0.3+10),obj_quests.quest_y-85+string_height(name)*0.3+5,c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9))
	scribble("НОВЫЙ КВЕСТ:",8937).starting_format("Font_main").scale(0.3).blend(c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9)).draw(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2)-(string_width("НОВЫЙ КВЕСТ:")*0.15),camera_get_view_y(view_camera[0])+90)
	var __str = string("[scale,0.3]")+string(name)
	if obj_quests.quest_y<133.9
	{obj_quests.quest_y+=0.15
	scribble(name,8936).starting_format("Font_main").scale(0.3).blend(c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9)).draw(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2)-(string_width(name)*0.15),camera_get_view_y(view_camera[0])+obj_quests.quest_y)
	}
	if obj_quests.quest_y>133.9
	{
	scribble(name,8936).starting_format("Font_main").scale(0.3).blend(c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9)).draw(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2)-(string_width(name)*0.15),camera_get_view_y(view_camera[0])+obj_quests.quest_y)
	status=1;

	if instance_exists(obj_textbox) obj_textbox.no_accept=0;
	/*if array_get_index(obj_quests.active_quests,global.main_quests[i])==-1*/ //array_push(obj_quests.active_quests,global.main_quests[i])
	obj_quests.quest_y=105;
	
	activation=0
	}
	}
	if activation == 2
	{
	if instance_exists(obj_textbox) 
	{
		obj_textbox.no_accept=1;
		obj_payer.skip_active=0;
	}
	draw_sprite_stretched_ext(Sprite139,0,min(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width(name)*0.15-5,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width("ВЫПОЛНЕН КВЕСТ:")*0.15-5),camera_get_view_y(view_camera[0])+85,max(string_width(name)*0.3+10,string_width("ВЫПОЛНЕН КВЕСТ:")*0.3+10),obj_quests.quest_y-85+string_height(name)*0.3+5,c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9))
	scribble("ВЫПОЛНЕН КВЕСТ:",8938).starting_format("Font_main").scale(0.3).blend(c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9)).draw(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2)-(string_width("ВЫПОЛНЕН КВЕСТ:")*0.15),camera_get_view_y(view_camera[0])+90)
	var __str = string("[scale,0.3]")+string(name)
	if obj_quests.quest_y<133.9
	{obj_quests.quest_y+=0.15
	scribble(name,8939).starting_format("Font_main").scale(0.3).blend(c_white,sin((camera_get_view_height(view_camera[0])-obj_quests.quest_y)/9)).draw(camera_get_view_x(view_camera[0])+(camera_get_view_width(view_camera[0])/2)-(string_width(name)*0.15),camera_get_view_y(view_camera[0])+obj_quests.quest_y)
	}
	if obj_quests.quest_y>133.9
	{
	status=2;
	if instance_exists(obj_textbox) obj_textbox.no_accept=0;
	/*if array_get_index(obj_quests.active_quests,global.main_quests[i])!=-1*/ //array_delete(obj_quests.active_quests,array_get_index(obj_quests.active_quests,global.main_quests[i]),1)
	obj_quests.quest_y=105;
	
	activation=0
	}
	}
}
}



for (var u=1; u <array_length(active_quests); u++)
{	with(active_quests[u])
	{
	if status == 1
	{
	last_y=obj_quests.active_quests[u-1].last_y+string_height(name)*0.22+string_height_scribble(desc)+6
	
	scribble(name).starting_format("Font_main").scale(0.22).draw(-99999,-99999+obj_quests.active_quests[u-1].last_y+1)
	scribble(desc).starting_format("Font_main").scale(0.19).wrap(88).line_spacing(9).draw(-99999,-99999+string_height(name)*0.2+obj_quests.active_quests[u-1].last_y+1)	
	draw_sprite_stretched_ext(spr_textbox3,0,1+camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+obj_quests.active_quests[u-1].last_y+1,max(string_width(name)*0.22+6,string_width_scribble(desc)+10),string_height(name)*0.22+string_height_scribble(desc)+6,c_white,1)
	scribble(name).starting_format("Font_main").scale(0.22).draw(1+camera_get_view_x(view_camera[0])+3,camera_get_view_y(view_camera[0])+3+obj_quests.active_quests[u-1].last_y+1)
	scribble(desc).starting_format("Font_main").scale(0.19).wrap(88).line_spacing(9).draw(1+camera_get_view_x(view_camera[0])+7,string_height(name)*0.22+3+camera_get_view_y(view_camera[0])+obj_quests.active_quests[u-1].last_y+1)	
	}
	}
}
}
//draw_text(100,100,array_get_index(active_quests,global.main_quests[1]))