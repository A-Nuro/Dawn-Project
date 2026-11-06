depth=-9999

if instance_exists(obj_b_player)
{
	if keyboard_check_pressed(vk_space)
	{
		if (active == true) active = false
		else active = true
	}
	if (keyboard_check_released(vk_escape) and active==true) active = false
}

if (active==true)
{
	x=120
	y=240
}
else
{
	x=-50
	y=-50
}