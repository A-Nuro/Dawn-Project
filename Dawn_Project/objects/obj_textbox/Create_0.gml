for (var i =0; i<=20;i++)
{
rand_x1[i]=0;
rand_y1[i]=0;
text_rand[i]="";
rand_to_off[i]=1;
rand_when[i]=0;
rand_alf[i]=0;
rand_spd[i]=0;
rand_sin[i]=0;
rand_move[i]=0;
rand_move_sin[i]=0;
rand_sin_offset[i]=0;
}



__end=0;
no_accept=0;
_op=0;
text_end=0;
talk_img=0;
depth = -9999;
obj_payer.talk=1;
textbox_width=(camera_get_view_width(view_camera[0])/2);
textbox_height=(camera_get_view_height(view_camera[0])/3);
border =8;
line_width = textbox_width - border*2;
txtb_spr[0]=spr_textbox;
txtb_img=0;
txtb_img_spd=6/60;
No_op=0;
page=0
page_number = 0;
text_x_offset[page] = 244;
_font[page_number]="Font_main";
text[0]="";
text_clear[0]=string_replace(text[page],"[shake]","")
talk_who[page_number]=noone;
talk_who_spr[page_number]=noone;
talk_who2[page_number]=noone;
talk_who_spr2[page_number]=noone;
reacting[page_number]=-1;
react_who[page_number]="";
react_scale[page_number]=1;
ch[0]=0;
ch[1]=0;
ch[2]=0;
text_spd[0]=0.6;
typist = scribble_typist();
typist.in(text_spd[page], 0);
text_ext[0]=""
count_ext[0]=0;
text_length[0] = string_length_scribble(text[0]);
draw_char=0;
text_time=8;
text_timer=0;
//выбор
option[0]="";
option_link_id[0]=-1;
option_pos=0;
option_number=0;

setup=false

snd[page_number] = noone


snd_delay=4;
snd_count=snd_delay;
scr_set_def_for_text()

