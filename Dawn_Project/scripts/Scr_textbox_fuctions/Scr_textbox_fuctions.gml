

function scr_set_def_for_text() {

txtb_spr[page_number] = spr_textbox;
snd[page_number]=noone;
text_spd[page_number]=0.6;
talk_who[page_number]=noone;
talk_who_spr[page_number]=noone;
talk_who2[page_number]=noone;
talk_who_spr2[page_number]=noone;
_font[page_number]="Font_main";

}


function scr_text(_text){
scr_set_def_for_text();
obj_payer.talk=1; 
if global.lang==0
{
text[page_number] =_text;
}
if global.lang==1
{
text[page_number] =argument[9];
}
if argument_count>1
	{
	snd[page_number]=argument[1]
	}
else
{snd[page_number]=noone;}
if argument_count>2
	{
	talk_who[page_number]=argument[2];
	}
else
{
	talk_who[page_number]=noone;
}
if argument_count>3
	{
	talk_who_spr[page_number]=argument[3];
	}
else
{
	talk_who_spr[page_number]=noone;
}
if argument_count>4
	{
	talk_who2[page_number]=argument[4];
	}
else
{
	talk_who2[page_number]=noone;
}
if argument_count>5
{
	talk_who_spr2[page_number]=argument[5];
}
else
{
	talk_who_spr2[page_number]=noone;
}
if argument_count>6
	{
		text_spd[page_number]=argument[6];
	}
else
	{text_spd[page_number]=0.6;
	}	
if argument_count>7
	{
			_font[page_number]=argument[7]
	}	
else
	{_font[page_number]="Font_main"
	}
if argument_count>8
	{
		if argument[8]=="end"
{text_end=1;
reacting[page_number]=-1;	
}
else text_end=0;
	}


if argument_count>10
{
if (argument[10]=="?") reacting[page_number]=0;
if (argument[10]=="!") reacting[page_number]=1;	
}
else reacting[page_number]=-1;
if argument_count>11
	{
		react_who[page_number]=argument[11]
	}
else react_who[page_number]="";

if argument_count>12
	{
		react_scale[page_number]=argument[12]
	}
else react_scale[page_number]=1;

page_number++;
}

function scr_text_ext(_text ){


text_ext[page_number]=_text;



if argument_count>1
	{snd[page_number] = argument[1];}
else
{snd[page_number]=noone;}
if argument_count>2
	{
		text_spd[page_number]=argument[2];
	}
else
	{text_spd[page_number]=0.6;
	}	
if argument_count>3
	{
			_font[page_number]=argument[3]
	}	
else
	{_font[page_number]="Font_main"
	}


}

function scr_text_rand(_text,_count,_x1,_y1,_to_off,_sin,_spd,_move,_angle,_eng){
if global.lang==0 text_rand[_count]=_text;
if global.lang==1 text_rand[_count]=_eng;
rand_to_off[_count]=_to_off;
rand_x1[_count]=_x1;
rand_y1[_count]=_y1;
rand_when[_count]=page_number;
rand_sin[_count]=_sin;
rand_spd[_count]=_spd;
rand_move[_count]=_move;
rand_sin_offset[_count]=_angle;





}

function scr_No_text(){

if argument_count>0

{obj_textbox.text_end=0;
	__end=0;
}
else
{
obj_textbox.text_end=1;
__end=1;
}
}


//опщион
function scr_option(_option, _link_id, _eng_op){
	if global.lang==0 option[option_number] = _option;
	if global.lang==1 option[option_number] = _eng_op;
	option_link_id[option_number] = _link_id;
	No_op=0
	option_number++;
}
	
function scr_No_option(_link_id){

	option[option_number] = "";
	option_link_id[option_number] = _link_id;
	option_number++;
	No_op++;
}



//текст ид
function create_textbox(_text_id){
	
	with(instance_create_depth(0,0,-9999,obj_textbox))
{
Scr_game_text(_text_id);
}
	
}

function scr_sound_sette(_start,_sound,_loop,_sec)
{
		if (audio_is_paused(_sound))
		{	
			audio_resume_sound(_sound);
		}

	if (_start = 1 and !audio_is_playing(_sound)) 
	{
		
		
		audio_play_sound(_sound,10,_loop);
	
		if (audio_sound_get_gain(_sound)==0) audio_sound_gain(_sound, 1, 0);

		
		obj_payer._song=string(audio_get_name(_sound)) 
	}
	
		if (_start = 0 and audio_is_playing(_sound) and _sec == 0) 
	{
		audio_stop_sound(_sound)
	
		obj_payer._song="_none"
	}
		
	if _sec!=0
	{
	if (_start = 0) 
	{
		
		audio_sound_gain(_sound, 1, 0);
		audio_sound_gain(_sound, 0, _sec*1000);
		if argument[4] == false
		{
		obj_payer.sound_off=2;
		}
		else
		{
		obj_payer._song="_none"
		obj_payer.sound_off=1;
		}
	}
	if (_start = 1) 
	{
		audio_sound_gain(_sound, 0, 0);
		audio_sound_gain(_sound, 1, _sec*1000);
	}
	}
}

