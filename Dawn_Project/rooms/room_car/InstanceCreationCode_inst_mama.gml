talking=1;
ini_open("character.name")
my_name=ini_read_string(global.lang,"Мама","Мама");
ini_close()
text_id="car_mama";
char_spr=s_mama_sd;
npc_id="mama"