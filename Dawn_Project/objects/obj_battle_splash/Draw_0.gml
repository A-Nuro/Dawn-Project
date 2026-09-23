
switch(type)
{
case 0:
rx=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width(un+" атаку"+un2+" "+tn+"!")*0.1
ry=camera_get_view_y(view_camera[0])+50
draw_sprite_stretched_ext(spr_textbox,0,rx,ry,string_width(un+" атаку"+un2+" "+tn+"!")*0.2+6,string_height(un+" атаку"+un2+" "+tn+"!")*0.2+4,c_white,min(time/40,1))
scribble(un+" атаку"+un2+" "+tn+"!").starting_format("Font_main",c_white).blend(c_white,min(time/40,1)).scale(0.2).wrap(140).line_spacing(10).draw(rx+3,ry+2);
break;
case 1:
rx=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width(un+" использу"+un2+" "+sn+"!")*0.1
ry=camera_get_view_y(view_camera[0])+50
draw_sprite_stretched_ext(spr_textbox,0,rx,ry,string_width(un+" использу"+un2+" "+sn+"!")*0.2+6,string_height(un+" использу"+un2+" "+sn+"!")*0.2+4,c_white,min(time/40,1))
scribble(un+" использу"+un2+" "+sn+"!").starting_format("Font_main",c_white).blend(c_white,min(time/40,1)).scale(0.2).wrap(140).line_spacing(10).draw(rx+3,ry+2);
break;
case 2:
rx=camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-string_width(un+" "+dn)*0.1
ry=camera_get_view_y(view_camera[0])+50
draw_sprite_stretched_ext(spr_textbox,0,rx,ry,string_width(un+" "+dn)*0.2+6,string_height(un+" "+dn)*0.2+4,c_white,min(time/40,1))
scribble(un+" "+dn).starting_format("Font_main",c_white).blend(c_white,min(time/40,1)).scale(0.2).wrap(140).line_spacing(10).draw(rx+3,ry+2);
break;
}
