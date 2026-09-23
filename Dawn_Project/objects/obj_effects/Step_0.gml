if image_index>=3 and (sprite_index=cutting_hurt or sprite_index=cutting_hurt_mirror) 
{

	if gamepad_is_connected(gpl()) gamepad_set_vibration(gpl(),abs((image_index-3)/9-1),abs((image_index-3)/9-1))

	
}
if image_index>=0 and (sprite_index=cutting_miss or sprite_index=cutting_miss_mirror) 
{

	if gamepad_is_connected(gpl()) gamepad_set_vibration(gpl(),abs((image_index)/9-1)/40,abs((image_index)/9-1)/40)

	
}