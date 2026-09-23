image_speed = 0;
hot_button = vk_nokey;
hot_button_gmpd = gp_start;
enum button_state{
	active,
	inactive
};
can_be_used=0;
btn_state = button_state.active;
global.btn_txt = ds_list_create();