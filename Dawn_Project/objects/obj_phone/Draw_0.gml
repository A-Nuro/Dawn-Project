//image_angle=90
if t_phone==1 and t_phone_app==0
{	
	sprite_index=spr_phone_appear;
	draw_self()
	if image_index>=3
	{
		sprite_index=spr_phone
		t_phone_app=1
	}
}
if t_phone==0 and t_phone_app==1
{	
	sprite_index=spr_phone_disappear;
	draw_self()
	if image_index>=3
	{
		sprite_index=spr_phone
		t_phone_app=0
		t_phone=0
	}
}

if t_phone=1 and t_phone_app=1 and pos!=-1 and pos1!=-1
{
image_index=menu_level;
draw_self()
draw_sprite(spr_cntrl,global.dev,x+112,y+196);


draw_sprite_ext(point,0,x+13+48*pos1,y+44+57*pos,0.5,0.5,0,c_white,1)
if menu_level==0 or menu_level==2 scribble(m_option[menu_level,pos1+pos*3]).starting_format("Font_main").draw(x+77-(string_width_scribble(m_option[menu_level,pos1+pos*3]))/2, y+19);
for (var i = 0; i<9; i++)
{
//scribble(m_option[menu_level,i],12+i).starting_format("Font_main").scale(0.49).draw(x+29+48*(i mod 3)-(string_width_scribble(m_option[menu_level,i])*0.48/2), y+44+32+57*(i div 3));
	
}

if menu_level==1 
{	
	scribble("[scale,0.3]Вы уверены?").starting_format("Font_main").draw(x+77-(string_width("Вы уверены?"))*0.3/2, y+34);
	scribble("[scale,0.22]Несохранённый прогресс").starting_format("Font_main").draw(x+77-(string_width("Несохранённый прогресс"))*0.22/2, y+61);
	scribble("[scale,0.22]будет утерян").starting_format("Font_main").draw(x+77-(string_width("будет утерян"))*0.22/2, y+72);
	scribble(m_option[menu_level,pos1+pos*3]).starting_format("Font_main").draw(x+77-(string_width_scribble(m_option[menu_level,pos1+pos*3]))/2, y+108);
}
}

