enemy_doings()
//
//sprite_index=this_sprite


var _f = function(_element, _index)
{
    return (_element = id);
}
if array_find_index(obj_payer.not_live,_f) !=-1
{
after_fight()
instance_destroy(id)
}
//((obj_payer.x>=x and obj_payer.x<=x+sprite_get_width(sprite_index)) and (obj_payer.y>=y and obj_payer.y<=y+sprite_get_height(sprite_index))) or ((obj_payer.x+sprite_get_width(obj_payer.sprite_index)>=x and obj_payer.x+sprite_get_width(obj_payer.sprite_index)<=x+sprite_get_width(sprite_index)) and (obj_payer.y+sprite_get_height(obj_payer.sprite_index)>=y and obj_payer.y+sprite_get_height(obj_payer.sprite_index)<=y+sprite_get_height(sprite_index))) or ((obj_payer.x>=x and obj_payer.x<=x+sprite_get_width(sprite_index)) and (obj_payer.y+sprite_get_height(obj_payer.sprite_index)>=y and obj_payer.y+sprite_get_height(obj_payer.sprite_index)<=y+sprite_get_height(sprite_index))) or ((obj_payer.x+sprite_get_width(obj_payer.sprite_index)>=x and obj_payer.x+sprite_get_width(obj_payer.sprite_index)<=x+sprite_get_width(sprite_index)) and (obj_payer.y>=y and obj_payer.y<=y+sprite_get_height(sprite_index)))
if (collision_point(obj_payer.bbox_right+6,obj_payer.bbox_bottom,id,true,false)  or collision_point(obj_payer.bbox_right+6,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_left-6,obj_payer.bbox_bottom,id,true,false) or collision_point(obj_payer.bbox_left-6,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_left,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_right,obj_payer.bbox_top-15,id,true,false) or collision_point(obj_payer.bbox_left,obj_payer.bbox_bottom+6,id,true,false) or collision_point(obj_payer.bbox_right,obj_payer.bbox_bottom+6,id,true,false))
{
	obj_payer.need_to_rumble=true;
if !audio_is_playing(snd_fight) 
{
	var _snd = obj_payer._song
	scr_sound_sette(0,asset_get_index(_snd),false,1.3);
	audio_play_sound(snd_fight,1,false)
	obj_payer._song = _snd
}

if gamepad_is_connected(gpl()) gamepad_set_vibration(gpl(),obj_black.image_index/22,obj_black.image_index/22);



if obj_black.black_speed>=0 scr_black(black_no,-0.6)
obj_payer.battle=1	

if obj_black.image_index<=2
{
with(obj_payer)
{
//obj_payer.phy_position_x-=20;
scr_black(black_no,2)
keyboard_key_release(ord("W"));
keyboard_key_release(ord("A"));
keyboard_key_release(ord("S"));
keyboard_key_release(ord("D"));
depth=9999
back_room=room
}
obj_payer._will_talk=will_talks
obj_payer._talk_turn=talk_turn;
obj_payer._talk_what=talk_what
array_push(obj_payer.not_live,id)
obj_payer.battle_bg=this_bg
global.evil_team=this_enemy
var _snd = obj_payer._song
audio_stop_all()
scr_sound_sette(1,this_song,true,0);
obj_payer._song = _snd
room_goto(room_fight)
}


}