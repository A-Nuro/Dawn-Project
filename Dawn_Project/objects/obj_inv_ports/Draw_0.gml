depth=-9998
sprite_index=spr_mike_inv

if (obj_phone.menu_level==3)
{
x=camera_get_view_x(view_camera[0])-64+camera_get_view_width(view_camera[0])/2-102;
y=camera_get_view_y(view_camera[0])+40;
}else
{
x=inst_my_best_inv.x-64
y=inst_my_best_inv.y
}


if (inst_my_best_inv.inv_active==true and obj_inventory_give.y<=camera_get_view_y(view_camera[0])+10) or obj_phone.menu_level=3
{
/*	
switch(object_get_name(global.team[0]))
{
case "obj_b_player":
draw_sprite_stretched(spr_textbox3,0,x-1,y-1,42,42)
draw_sprite_stretched(spr_mike_inv,image_index,x,y,40,40)
var _naem = "[scale,0.3]"+"Майк"
draw_sprite_stretched(spr_textbox2,0,x+20-(string_width_scribble(_naem)/2),y+42,string_width_scribble(_naem),string_height(_naem)*0.3)
scribble(_naem).starting_format("Font_main",c_white).draw(x+20-(string_width_scribble(_naem)/2),y+42);
break
case "obj_b_anna":
draw_sprite_stretched(spr_textbox3,0,x-1,y+63,42,42)
draw_sprite_stretched(spr_anna_inv,image_index,x,y+64,40,40)
var _naem = "[scale,0.3]"+"Аня"
draw_sprite_stretched(spr_textbox2,0,x+20-(string_width_scribble(_naem)/2),y+42+64,string_width_scribble(_naem),string_height(_naem)*0.3)
scribble(_naem).starting_format("Font_main",c_white).draw(x+20-(string_width_scribble(_naem)/2),y+42+64);
break
}

}
if array_length(global.team)>1
{
switch(object_get_name(global.team[1]))
{
case "obj_b_player":
draw_sprite_stretched(spr_textbox3,0,x-1,y+63,42,42)
draw_sprite_stretched(spr_mike_inv,image_index,x,y+64,40,40)
var _naem = "[scale,0.3]"+"Майк"
draw_sprite_stretched(spr_textbox2,0,x+20-(string_width_scribble(_naem)/2),y+42+64,string_width_scribble(_naem),string_height(_naem)*0.3)
scribble(_naem).starting_format("Font_main",c_white).draw(x+20-(string_width_scribble(_naem)/2),y+42+64);
break

case "obj_b_anna":
draw_sprite_stretched(spr_textbox3,0,x-1,y+63,42,42)
draw_sprite_stretched(spr_anna_inv,image_index,x,y+64,40,40)
var _naem = "[scale,0.3]"+"Аня"
draw_sprite_stretched(spr_textbox2,0,x+20-(string_width_scribble(_naem)/2),y+42+64,string_width_scribble(_naem),string_height(_naem)*0.3)
scribble(_naem).starting_format("Font_main",c_white).draw(x+20-(string_width_scribble(_naem)/2),y+42+64);
break
}	
	
}
*/
if instance_exists(obj_payer)
{
if obj_payer.faza[0]>=5
{
for (var i = 0; i < array_length(global.team); i++)
{
	switch(object_get_name(global.team[i]))
	{
	case "obj_b_player":
		if activ_portrets[i]=false draw_sprite_stretched(spr_textbox3,0,x-1,y-1+64*i,42,42)
		else draw_sprite_stretched_ext(spr_textbox2,0,x-1,y-1+64*i,42,42,c_white,0.8)
		draw_sprite_stretched(spr_mike_inv,image_index,x,y+64*i,40,40)
		var _naem = "[scale,0.2]"+"Майк"
		draw_sprite_stretched(spr_textbox2,0,x-1-64,y+64*i,64,50)
		//draw_sprite_stretched(spr_textbox2,0,x+20-(string_width_scribble(_naem)/2),y+41+64*i,string_width_scribble(_naem),string_height(_naem)*0.3)
		scribble(_naem).starting_format("Font_main",c_white).draw(x-32-string_width_scribble(_naem)/2,y+1+64*i);//-46
		scribble("HP:"+string(obj_payer._hp[0])+"/80").starting_format("Font_main",c_white).scale(0.16).draw(x-32-string_width("HP:"+string(obj_payer._hp[0])+"/80")/2*0.16,y+47-34+64*i);
		scribble("SP:"+string(obj_payer._sp[0])+"/40").starting_format("Font_main",c_white).scale(0.16).draw(x-32-string_width("SP:"+string(obj_payer._sp[0])+"/40")/2*0.16,y+47-16+64*i);
		draw_sprite(ui_hp,0,x-59,y-22+47+64*i);
		draw_sprite_part(ui_hp,1,0,0,sprite_get_width(ui_hp)*obj_payer._hp[0]/80,sprite_get_height(ui_hp),x-59,y-22+47+64*i);
		draw_sprite(ui_sp,0,x-59,y-6+47+64*i);
		draw_sprite_part(ui_sp,1,0,0,sprite_get_width(ui_hp)*obj_payer._sp[0]/40,sprite_get_height(ui_hp),x-59,y-6+47+64*i);
	break
	case "obj_b_anna":
		if activ_portrets[i]=false draw_sprite_stretched(spr_textbox3,0,x-1,y-1+64*i,42,42)
		else draw_sprite_stretched_ext(spr_textbox2,0,x-1,y-1+64*i,42,42,c_white,0.8)
		draw_sprite_stretched(spr_anna_inv,image_index,x,y+64*i,40,40)
		var _naem = "[scale,0.2]"+"Аня"
		draw_sprite_stretched(spr_textbox2,0,x-1-64,y+64*i,64,50)
		//draw_sprite_stretched(spr_textbox2,0,x+20-(string_width_scribble(_naem)/2),y+41+64*i,string_width_scribble(_naem),string_height(_naem)*0.3)
		scribble(_naem).starting_format("Font_main",c_white).draw(x-32-string_width_scribble(_naem)/2,y+1+64*i);//-46
		scribble("HP:"+string(obj_payer._hp[1])+"/65").starting_format("Font_main",c_white).scale(0.16).draw(x-32-string_width("HP:"+string(obj_payer._hp[1])+"/65")/2*0.16,y+47-34+64*i);
		scribble("SP:"+string(obj_payer._sp[1])+"/50").starting_format("Font_main",c_white).scale(0.16).draw(x-32-string_width("SP:"+string(obj_payer._sp[1])+"/50")/2*0.16,y+47-16+64*i);
		draw_sprite(ui_hp,0,x-59,y-22+47+64*i);
		draw_sprite_part(ui_hp,1,0,0,sprite_get_width(ui_hp)*obj_payer._hp[1]/65,sprite_get_height(ui_hp),x-59,y-22+47+64*i);
		draw_sprite(ui_sp,0,x-59,y-6+47+64*i);
		draw_sprite_part(ui_sp,1,0,0,sprite_get_width(ui_hp)*obj_payer._sp[1]/50,sprite_get_height(ui_hp),x-59,y-6+47+64*i);
		break
	}
}
}
}
}