if room != room_fight and room != Main_menu
{
draw_sprite_stretched(sprite_index,image_index,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-46,camera_get_view_y(view_camera[0])+6,40,40)
}
	if global.time!=time_change and time_change!=4 and global.time!=4
	{
	
	if global.lang==0
	{
	switch(global.time)
	{
		case 0:
		sprite_index=spr_time_to_day
		time_text="Утро"
		break;
		case 1:
		sprite_index=spr_time_to_evening
		time_text="День"
		break;
		case 2:
		sprite_index=spr_time_to_night
		time_text="Вечер"
		break;
		case 3:
		sprite_index=spr_time_to_morning
		time_text="Ночь"
		break;
		
	}
	}
	if global.lang==1
	{
	switch(global.time)
	{
		case 0:
		sprite_index=spr_time_to_day
		time_text="Morning"
		break;
		case 1:
		sprite_index=spr_time_to_evening
		time_text="Day"
		break;
		case 2:
		sprite_index=spr_time_to_night
		time_text="Evening"
		break;
		case 3:
		sprite_index=spr_time_to_morning
		time_text="Night"
		break;
		
	}
	}
	if image_index>=image_number-1 and sprite_index!=spr_time
	{

		global.time+=1
		//sprite_index=spr_time
		image_index=0;
		if global.time>3
	{
		global.time=0
	}
		switch(global.time)
	{
		case 0:
		sprite_index=spr_time_to_day
		break;
		case 1:
		sprite_index=spr_time_to_evening
		break;
		case 2:
		sprite_index=spr_time_to_night
		break;
		case 3:
		sprite_index=spr_time_to_morning
		break;
		
	}
	

	}
	}
	if (global.time==time_change) and time_change!=4 and global.time!=4
	{
		sprite_index=spr_time
		image_index=global.time
	}

if time_change==4 and global.time!=time_change
{	
	sprite_index=spr_time_unknown
	global.time=4	
}

if global.time==4 and global.time!=time_change and time_was!=-1
{	
	global.time=time_was;
	time_was=-1;
}


if room == room_fight or room == Main_menu
{
x=camera_get_view_x(view_camera[0])-120	
y=camera_get_view_y(view_camera[0])-120	
}
else
{
x=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-46
y=camera_get_view_y(view_camera[0])+6
}
if global.lang==0
{
	switch(global.time)
	{
		case 0:
		time_text="Утро"
		break;
		case 1:
		time_text="День"
		break;
		case 2:
		time_text="Вечер"
		break;
		case 3:
		time_text="Ночь"
		break;
		case 4:
		time_text="???"
		break;
	}
}
if global.lang==1
{
	switch(global.time)
	{
		case 0:
		time_text="Morning"
		break;
		case 1:
		time_text="Day"
		break;
		case 2:
		time_text="Evening"
		break;
		case 3:
		time_text="Night"
		break;
		case 4:
		time_text="???"
		break;
	}
}
//if (obj_black.sprite_index=black_night) 
depth=obj_black.depth-1;	
//else depth=obj_black.depth+1;
	
draw_sprite_stretched(spr_time_back,0,x-54,y,53,41)
if global.lang==0 scribble("Время:").starting_format("Font_main").scale(0.27).draw(x-50,y+3)
if global.lang==1 scribble("Time:").starting_format("Font_main").scale(0.27).draw(x-50,y+3)	
scribble(time_text).starting_format("Font_main").scale(0.25).draw(x-47,y+20)
