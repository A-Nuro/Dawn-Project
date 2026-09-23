// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function scr_reaction(react_num,_scale){
	var _react = instance_create_depth(x-15,y-15,-9998,obj_react);
	
	with(_react)
	{
	switch (react_num)
		{
		case "?":
		image=0;
		break;
		case "!":
		image=1;
		break;
		}
		scale=_scale;
	}
}