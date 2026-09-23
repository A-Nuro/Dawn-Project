sprite_index=eff_anim;
draw_self();
if image_index==4 and (sprite_index=cutting_hurt or sprite_index=cutting_hurt_mirror)and !audio_is_playing(Snd_hit)
{
audio_play_sound(Snd_hit,1,false)

}
if (sprite_index!=no_no and image_index>=image_number)
{

if gamepad_is_connected(gpl()) gamepad_set_vibration(gpl(),0,0)
	

	instance_destroy(id);
}

draw_text(x,y,our)