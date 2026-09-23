randomize();
depth=20
enum phase{
	init,
	start_turn,
	wait,
	process,
	check_finish,
	end_turn,
	win,
	lose
}
timer=40;
cool_chels = 0;
combat_phase = phase.init;
units__finished = 0;
selected_finished = false;
process_finished = false;
allow_input = false;
turn_all=0;
is_lvl_up=[]

andr_tap=0;

cam_w=640
cam_h=360
cam_x=0
cam_y=0

moving=false

global.selected_unit = noone;
global.units = ds_list_create();
global.good_team = ds_list_create();
global.bad_team = ds_list_create();
global.alive_units = ds_list_create();
global.selected_targets = ds_list_create();

global.targets = ds_list_create();
global.targeting = false;

base_ui = layer_get_id("Base_ui")
target_ui = layer_get_id("Target_ui")
skill_ui = layer_get_id("Skill_ui");

global.skills_buttons = ds_list_create();
global.skill_targeting = false;
skill_sent = false;
instance_create_depth(0,0,0, obj_skills);

var scr = display_get_width()/display_get_height()
if (scr<16/9)
{
	cam_w=640
	cam_h=640/scr
	cam_y=0-(640/scr-360)/2
	cam_x=0
}
else
{
	cam_w=360*scr
	cam_h=360
	cam_y=0
	cam_x=0-(360*scr-640)/2
}
