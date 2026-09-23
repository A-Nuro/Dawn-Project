
function Scr_game_text(_text_id){
ini_open("character.name")
/*
switch(global.lang)
{
	case 0:*/
	var _mike = ini_read_string(global.lang,"Майк","Майк");
	var _anya = ini_read_string(global.lang,"Аня","Аня");
	var _mam = ini_read_string(global.lang,"Мама","Мама");
	var _dad = ini_read_string(global.lang,"Папа","Папа");
	var _sasha = ini_read_string(global.lang,"Александр","Александр");
	var _faceless = ini_read_string(global.lang,"Безликий","Безликий");
	var _masha = ini_read_string(global.lang,"Маша","Маша");
	var _andrey = ini_read_string(global.lang,"Андрей","Андрей");
	var _nastya = ini_read_string(global.lang,"Настя","Настя");
	var _zhenya = ini_read_string(global.lang,"Женя","Женя");
	var _adam = ini_read_string(global.lang,"Адам","Адам");
	var _adam_soul = ini_read_string(global.lang,"Душа Адама","Душа Адама");
	var _mike_kid = ini_read_string(global.lang,"Майк (маленький)","Майк (маленький)");


ini_close()
	switch(_text_id)
	{
	case "space":
obj_payer.moment_skip=1;
scr_text(" ",noone," ",noone,noone,noone,0.6,"Font_main","end");
break;

case "game_start":
scr_text("Где я?",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"Where am I?");
scr_text("Этот дом...",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"This house...");
scr_text("Он выглядит прямо как мой родной дом.",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"It looks just like my own house.");
scr_text("Но совсем другой.",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"But much different.");
scr_text("...",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end","...");
	break;
	case "my_home":
scr_text("Мой домик",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
break;
	case "first door":
scr_text("Где я?",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"Where am I?");
scr_text("Этот дом...",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"This house...");
scr_text("Он выглядит прямо как мой родной дом.",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"It looks just like my own house.");
scr_text("Но совсем другой.",noone,_mike,"Mike",noone,noone,0.6,"Font_main",noone,"But much different.");
scr_text("...",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end","...");
	break;
	
	case "First talk1":
	obj_payer.sprite_index=spsu_;
scr_text("А? Что ты такое?",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"A? What are you?");
scr_text("Существо из твоих страхов.",noone,noone,"Mike","???",noone,0.6,"Font_main",noone,"Creature of your fears.");
scr_text("Моих страхов?",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"My fears?");
scr_text("Ты прекрастно всё понимаешь. Мир во всю меняется, но ты не готов к этим переменам.",noone,noone,"Mike","???",noone,0.6,"Font_main",noone,"You understand everything clearly. This world is changing, but you are not ready for it.");
scr_text("!",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"!");
scr_text("Нет. Это неправда...",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"No. That isn't truth...");
scr_text("Тогда докажи что я неправ.",noone,noone,"Mike","???",noone,0.6,"Font_main",noone,"Then prove me wrong.");
scr_No_option("First talk1-");
break;
case "First talk1-":
obj_payer.faza[0]=0.01;
scr_text("Сразись со своими страхами!",noone,noone,"Mike","???",noone,0.6,"Font_main",noone,"Face your fears!");
break;

case "Firstest fight0":
obj_payer.sprite_index=spsd_;
obj_payer._talk_turn=1;
obj_payer._talk_what="Firstest fight1"
scr_text("Покажи мне, что ты не бессилен. Используй всё, что у тебя есть.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"Show me that you are not useless. Bring everything that you can.");
scr_text("Чёрт, он и не думает останавливаться...",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"Damn it, it doesn't even think to stop...");
break;

case "Firstest fight1":
obj_payer._talk_turn=2;
obj_payer._talk_what="Firstest fight2"
if global.good_team[|0].current[@SP]<=39
{
if obj_cursor.cursor!=3
{
scr_text("И это всё? Я ожидал атаки сильнее.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"Show me that you are not useless. Bring everything that you can.");
scr_text("Чёрт, он и не думает останавливаться...",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"Damn it, it doesn't even think to stop...");
}
else
{
scr_text("Ай, кажется, я слишком резко выдвинул руку.",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"Ouch, I think I moved my arm too fast.");
scr_text("Хмпф...",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"Hmpf...");
}
}
else
{
scr_text("Я думал, ты пойдёшь в нападение.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"I thought you will go on the attack.");
scr_text("Но ты боишься...",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"But you are too scared...");
scr_text("...",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"...");
}
break;

case "Firstest fight2":
obj_payer._talk_turn=4;
obj_payer._talk_what="Firstest fight3"
scr_text("Твои друзья. Ты всех их потерял.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"Your friends. You lost them all.");
scr_text("И теперь даже не можешь постоять за себя.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"And now you can not even stand for yourself.");
break;

case "Firstest fight3":
/*
obj_payer._talk_turn=5;
obj_payer._talk_what="First talk2"*/
scr_text("Тебе не выжить в этом мире.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"You can not survive in this world.");
scr_text("Если не я, так ты сам добьёшь себя.",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"If now by me, then you will fininsh yourself off.");
scr_text("Хотя, я бы хотел встретиться снова",noone,"???",noone,noone,noone,0.6,"Font_main",noone,"But, I would be happy to meet you again.");
break;

case "First talk2":
obj_time.time_change=3;
obj_time.time_was=3;
obj_pic.picture=pic_mike_in_car;
for (var i = 0; i < 2; i++)
{	
	inst_my_best_inv.inventory[i].num=global.items[2].num;
	inst_my_best_inv.inventory[i].namein=global.items[2].namein;
	inst_my_best_inv.inventory[i].colvo=global.items[2].colvo;
	inst_my_best_inv.inventory[i].activ=global.items[2].activ;
	inst_my_best_inv.inventory[i].use_no_battle=global.items[2].use_no_battle;
	inst_my_best_inv.inventory[i].hp_change=global.items[2].hp_change;
	inst_my_best_inv.inventory[i].sp_change=global.items[2].sp_change;
}

scr_black(black_no,1);
room_goto(room_car)
/*
scr_sound_sette(0,Sng_Last_hope_died,true,0);
scr_sound_sette(1,Sng_Feeling_empty,true,1);*/
scr_text("!",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"!");
scr_No_option("First talk2-");
break;
case "First talk2-":
obj_payer.phy_position_x=200;
obj_payer.phy_position_y=80;

scr_text("Что?..",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"Wha?..");
scr_text("(Я проснулся.)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(I woke up.)");
scr_text("...",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"...");
scr_text("(Это был сон?)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(Was it just a dream?)");
scr_text("(А то все чувства в нём были уж слишком реальными...)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(But every feelings in was awfully real...)");
scr_text("Ты проснулся? Мы как раз скоро приедем.",noone,noone,noone,_mam,noone,0.6,"Font_main",noone,"You woke up? We will be there soon enough.");
scr_text("(Что?)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(What?)","?","mike",2);
scr_text("(Из-за этого сна я совсем забыл про то, что сейчас происходит)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(This dream made me lost track of reality for a moment.)");
scr_text("(И вот он я, сижу в самом конце микроавтобуса)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(And here I am, sitting at the very and of this tiny bus)");
scr_text("А ещё раз... зачем мы переежаем?",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"Uh, once again... why are we moving?");
scr_text("У нас с мамой там важные дела...",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"Me and mother had some important business...");
scr_text("Это я уже слышал, а по подробнее расскажете?",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"I heard that already, but will you tell me any details?");
scr_text("...",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"...");
scr_text("... Наш переезд ведь связан с вашей работой?",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"... Our move is related to your job, right?");
scr_text("Ну да. Нам было предложено новое место работы.",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"Well yeah. We got new work place.");
scr_text("То есть вы снова будете весь день на работе?",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"So you will spend whole day at work as always?");
scr_text("Тут мы особо ничего поменять не можем.",noone,noone,noone,_mam,noone,0.6,"Font_main",noone,"We can't change much in it.");
scr_text("Кстати... а в какой ты там класс уже идёшь?",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"By the way... what grade are you in now?");
scr_text("Пап, если что, мне уже 16.",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"Dad, I am 16 already.");
scr_text("Как быстро время летит...",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"Oh, time sure fly fast...");
scr_text("Ага...",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"Yeah...");
scr_text("*вздох*",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"*sight*");
scr_text("Знаешь, тебе же завтра надо будет идти в школу?",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"You know, you will go to school tomorrow, right?");
scr_text("Заведи там как можно больше друзей. Познакомься со всеми своими одноклассниками.",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"Make sure to make as many friends as you can. Introduce yourself to all your classmates");
scr_text("Так ты точно не останешься один.",noone,noone,noone,_dad,noone,0.6,"Font_main",noone,"So you definitly won't be alone");
scr_text("...",noone, _mike,noone,noone,noone,0.6,"Font_main",noone,"...");
scr_text("(Я посмотрел в окно, как будто игнорируя это предупреждение)",noone, _mike,noone,noone,noone,0.6,"Font_think",noone,"(I just looked through the window, almost like I didn't heard this warning)");
scr_text("(Хочу просто оказаться снова у себя в старом домике.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Я попробовал прикрыть глаза, сфокусировавшись на своих мыслях)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_No_option("First talk3");
break;
case "First talk3":
scr_black(black_no,-1);
obj_payer.battle=0;
scr_text("(Мои родители долго ждали повышения, и внезапно им предложили новое дело за тридевять земель...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Как тяжело было прощаться со своим домом...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(И ведь я даже не просил этого.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Бросить всех моих друзей...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Хоть мы и готовились к этому несколько недель...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Но я всё равно не успел попрощаться со своими друзьями)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Я боялся произносить вслух то, что скоро перееду так далеко.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Боялся принять это.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Как же я жалею об этом...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_No_option("First talk4");
break;
case "First talk4":
obj_payer.phy_position_x=300;
obj_payer.phy_position_y=125;
obj_payer.sprite_index=spsd_;
scr_text("(...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Вскоре автобус остановился.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("Так, давайте, это наша остановка.",noone,noone,noone,_mam);
scr_text("(Мы забрали свои вещи, и быстро покинули автобус.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Ну, с собой у нас только очень малая часть вещей...)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(Остальная их часть ехала отдельно от нас)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_text("(А автобус с другими людьми сразу же уехал дальше.)",noone, _mike,noone,noone,noone,0.6,"Font_think");
scr_No_option("First talk5");
break;


case "First talk5":
scr_black(black_night,1);
obj_pic.picture=noone;
scr_sound_sette(0,Sng_Feeling_empty,true,0.5);
scr_sound_sette(1,Sng_First_evening,true,1);
obj_payer._sp[0]=40;
scr_text("(На улице уже довольно темно и прохладно... Не думал, что мы будем ехать такдолго.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("First talk6");
break;

case "First talk6":
obj_payer.faza[9]=156;
obj_payer.faza[10]="sasha_down_no";
obj_payer.faza[11]=1;
scr_text("Ох, вы наконец-то тут.",noone,noone,"Mike","???");
scr_text("А? Кто Вы?",noone, _mike,"Mike",noone,noone,0.6,"Font_main",noone,"Ah? Who are you?","?","mike",1);
scr_text("Привет, Саша. Как долго ты уже тут?",noone,noone,"Mike",_dad,"Papa");
scr_text("Буквально пару дней назад приехали.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Ну, нам-то в отличие от вас ехать надо было совсем немного.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Майк, это Александр. Он наш знакомый по работе.",noone,noone,"Mike",_mam,"Mama");
scr_text("Здравствуйте...",noone, _mike,"Mike",noone,"Sasha");
scr_text("Что такой бледный? Укачало в дороге?",noone,noone,"Mike",_sasha,"Sasha");
scr_text("(... да нет, просто чуть не умер во сне...)",noone, _mike,"Mike_awk",noone,"Sasha",0.6,"Font_think");
scr_text("Нет, всё вроде нормально.",noone, _mike,"Mike",noone,"Sasha");
scr_text("Чтож, тогда надеюсь что здесь тебе понравится.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Наши вещи уже там?",noone,noone,"Mike",_mam,"Mama");
scr_text("Да, Они приехали часов пять назад, Анечка помогла мне их занести.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("О чём вы?",noone, _mike,"Mike",noone,"Sasha");
scr_text("Понимаешь, из-за обстоятельств на работе вам была выделена часть общежития, рассчитанного на две семьи.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("И мы являемся второй семьёй в нём.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Ага... А что за обстоятельства такие?",noone, _mike,"Mike",noone,"Sasha");
scr_text("Так нам просто будет проще работать.",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Извините, но можно ещё один вопрос...",noone, _mike,"Mike_awk",noone,"Sasha");
scr_text("А Аня - это, получается, ваша жена?",noone, _mike,"Mike",noone,"Sasha");
scr_text("Это моя дочь.",noone,noone,"Mike",_sasha,"Sasha");
scr_No_option("First talk7--");
break;

case "First talk7--":
//global.main_quests[1].activation=1
scr_text("Оу...",noone, _mike,"Mike_awk",noone,"Sasha");
obj_payer.faza[0]=0.1;
if os_type = os_android
{
scr_text("*Для открытия меню с помощью кнопки паузы*",noone,noone,noone,noone,noone,0.6,"Font_main","end")	
}
else
{
scr_text("*Для открытия меню с помощью Еsc*",noone,noone,noone,noone,noone,0.6,"Font_main","end")
}
obj_saves.savekey=1;
break;

case "car_sasha":
scr_text("Хм...",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Ты ведь точно в порядке?",noone,noone,"Mike",_sasha,"Sasha");
scr_text("Да, всё хорошо.",noone, _mike,"Mike_awk",noone,"Sasha",0.6,"Font_main","end");
break;

case "car_papa":
scr_text("Надеюсь, тебе понравится проводить время с сестрой.",noone,noone,"Mike",_dad,"Papa");
scr_text("Я тоже...",noone, _mike,"Mike",noone,"Papa");
scr_text("(Интересно, куда уехала её мама?)",noone, _mike,"Mike",noone,"Papa",0.6,"Font_think");
scr_text("(Моя тётя?)",noone, _mike,"Mike",noone,"Papa",0.6,"Font_think");
scr_text("([c_yellow]Аврора[c_white])",noone, _mike,"Mike",noone,"Papa",0.6,"Font_think","end");
break;

case "car_mama":
scr_text("Ты готов идти домой?",noone,noone,"Mike",_mam,"Mama");
scr_option("Нет","car_mama_no","No");
scr_option("Да","car_mama_yes","Yes");
break;
case "car_mama_no":
scr_text("Ещё нет.",noone, _mike,"Mike",noone,"Mama");
scr_text("Хорошо, тогда мы подождём твоей готовности.",noone,noone,"Mike",_mam,"Mama",0.6,"Font_main","end");
break;
case "car_mama_yes":
scr_text("Ага.",noone, _mike,"Mike",noone,"Mama");
scr_text("Ну, тогда пошли.",noone,noone,"Mike",_mam,"Mama");
scr_No_option("home_0");
break;
case "home_0":
scr_black(black_night,-1);
scr_sound_sette(0,Sng_First_evening,true,1);
scr_text("(Александр сопроводил нас в наш новый дом)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(На улице уже так темно...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",Snd_walk_ground);
scr_No_option("home__0");
break;
case "home__0":
obj_payer.faza[9]=0;
obj_payer.faza[10]=0;
obj_payer.faza[11]=0;
obj_payer.phy_position_x=255;
obj_payer.phy_position_y=257;
obj_payer.sprite_index=spgu_
scr_text("(И вот, мы пришли.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_1");
break;
case "home_1":
room_goto(room_home);
scr_black(black_no,1);
scr_sound_sette(1,Sng_Slowly,true,0);

scr_text("Папа? Ты уже вернулся?",noone,noone,"Mike","???","Anya",0.6,"Font_main");

scr_text("Да.",noone,_sasha,"Sasha",noone,"Anya");
scr_text("А кто эти люди? Это твои коллеги по работе?",noone,noone,"Sasha","???","Anya");
scr_text("Я пока поговорю с ними, а ты познакомься с вот ним.",noone,_sasha,"Sasha",noone,"Anya");
scr_No_option("home__1");
break;
case "home__1":
obj_payer.faza[10]="anna_s_left"
obj_payer.sprite_index=spgr_

scr_text("Привет...",noone, _mike,"Mike","???","Anya");
scr_text("Хм?",noone,noone,"Mike","???","Anya",);
scr_text("...",noone,noone,"Mike","???","Anya",);
scr_text("Меня зовут Аня.",noone,noone,"Mike",_anya,"Anya");
scr_text("А тебя как?",noone,noone,"Mike",_anya,"Anya");
scr_text("Меня?",noone, _mike,"Mike",noone,"Anya");
scr_text("Ну, да.",noone,noone,"Mike",_anya,"Anya");
scr_text("Меня зовут Майк.",noone, _mike,"Mike",noone,"Anya");
scr_text("Майк...",noone,noone,"Mike",_anya,"Anya");
scr_text("Эм... и чем ты здесь занимаешься?",noone, _mike,"Mike",noone,"Anya");
scr_text("Просто живу. А что ты вообще ожидаешь услышать?",noone,noone,"Mike",_anya,"Anya");
scr_text("Аа... да, я что-то не подумал.",noone, _mike,"Mike_awk",noone,"Anya_awk");
scr_text("*вздох*",noone,noone,"Mike_awk",_anya,"Anya_awk");
scr_text("А кстати, а зачем вы приехали сюда?",noone,noone,"Mike",_anya,"Anya");
scr_text("Ну... мама с папой получили повышение и...",noone, _mike,"Mike",noone,"Anya");
scr_text("Не, это-то всё понятно.",noone,noone,"Mike",_anya,"Anya");
scr_text("Я говорю про [c_yellow]настоящую причину[c_white].",noone,noone,"Mike",_anya,"Anya");
scr_text("А?",noone, _mike,"Mike",noone,"Anya");
scr_text("Стой, так ты не придумывал это?",noone,noone,"Mike",_anya,"Anya_sur");
scr_text("Мх, ладно, не важно...",noone,noone,"Mike",_anya,"Anya_awk");
scr_text("...",noone,noone,"Mike",_anya,"Anya_awk");
scr_text("(Она попыталась быстро уйти от темы.)",noone, _mike,"Mike",noone,"Anya_awk",0.6,"Font_think");
scr_No_option("home_2");
break;
case "home_2":
scr_text("Так или иначе, но я пойду в мою комнату.",noone,noone,"Mike",_anya,"Anya");
obj_payer.faza[9]=143;
obj_payer.faza[10]="anna_up";
obj_payer.faza[11]=1.5;
scr_text("... О, и кстати, не забывай стучать, прежде чем будешь входить ко мне.",noone,noone,"Mike",_anya,"Anya");
scr_text("(...)",noone, _mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Ладно. Как будто я этого обычно не делаю...",noone, _mike,"Mike",noone,"Anya");
scr_text("Не, ну а вдруг. Разные же люди попадаются",noone,noone,"Mike",_anya,"Anya");
scr_No_option("home_3");
break;
case "home_3":
obj_payer.faza[9]=-640;
obj_payer.faza[10]="anna_left";
obj_payer.faza[11]=2;
scr_black(black_no,-1.5);
scr_text("(C этими словами она поспешила вверх по лестнице)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Видимо, наши комнаты находятся там.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Но что за [c_yellow]настоящая причина[c_white]?",noone, _mike,"Mike",noone,noone,0.6,"Font_main");
scr_text("(Почему она так быстро сменила тему?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Какие тайны она пытается от меня утаить?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_4");
break;
case "home_4":
scr_No_text();
scr_black(black_no,2);
obj_payer.faza[0]=1;
obj_payer.faza[9]=0;
obj_payer.faza[10]=0;
obj_payer.faza[11]=0;
break;
case "npc kust":

scr_text("Это куст.	...		Выглядит красиво.",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");

break;
case "home_storage":
scr_text("(Кладовая...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Надеюсь, там никто не прячется...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think","end");
break;

case "home_adults":
scr_text("Но они ведь ещё дети. Думаешь, стоит им говорить?",noone, noone,"Mike",_mam,"Mama");
scr_text("Наверное, лучше будет подождать, дабы не делать опрометчивых действий.",noone, noone,"Mike",_dad,"Papa");
scr_text("...",noone, _mike,"Mike");
scr_text("(Не думаю, что они готовы говорить со мной прямо сейчас...)",noone, _mike,"Mike_awk",noone,noone,0.6,"Font_think","end");
break;

case "home_door":
scr_text("(Заперто)",noone, _mike,"Mike",noone,noone,0.6,"Font_think","end");

obj_payer.faza[9]=900;
obj_payer.faza[10]="masha_s_down";
obj_payer.faza[11]=0.9;

break;

case "home_2floor":
obj_payer.sprite_index=spgu_
obj_payer.faza[10]="masha_s_down";
scr_text("Ой!",noone,noone,"Mike","???","Masha");
scr_text("Майк, это ты!",noone,noone,"Mike","???","Masha");
scr_text("(Маша... моя двоюродная сестра)",noone,_mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("(Она так выросла с момента последней нашей встречи)",noone,_mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("Мне обещали, что ты придешеь оооочень поздно, что я буду уже спать и тебя не увижу.",noone,noone,"Mike",_masha,"Masha");
scr_text("Видимо нам повезло со светофорами.",noone,_mike,"Mike",noone,"Masha");
scr_text("Ииили я просто не легла спать...",noone,noone,"Mike",_masha,"Masha");
scr_text("В любом случае, это оправдано!",noone,noone,"Mike",_masha,"Masha");
scr_text("О чём ты?",noone,_mike,"Mike",noone,"Masha");
scr_text("Ну, кто ещё бы тут провёл тебе экскурсию по дому?",noone,noone,"Mike",_masha,"Masha");
scr_text("Правда, только по второму этажу...						...не хочу чтоб взрослые увидели что я ещё не в кровати.",noone,noone,"Mike",_masha,"Masha");
scr_No_option("home_2floor1");
break
case "home_2floor1":
obj_payer.faza[9]=370;
obj_payer.faza[10]="masha_up_no";
obj_payer.faza[11]=1.5;
obj_payer.fake_up=1;
obj_payer.stop_y=373;
scr_text("Итак, слева- ой, то есть справа от нас комната, где будут жить дядя с тётей.",noone,noone,"Mike",_masha,"Masha");
scr_text("Ну, мои дядя с тётей, твои мама с папой.",noone,noone,"Mike",_masha,"Masha");
scr_text("Не волнуйся, я понял.",noone,_mike,"Mike",noone,"Masha");
scr_text("А слева от нас живёт папа у Ани.",noone,noone,"Mike",_masha,"Masha");
scr_text("Аня - это такая девочка тут живёт, она там только что проходила.",noone,noone,"Mike",_masha,"Masha");
scr_text("Да, я уже с ней виделся.",noone,_mike,"Mike",noone,"Masha");
scr_No_option("home_2floor2");
break
case "home_2floor2":
obj_payer.faza[9]=250;
obj_payer.faza[10]="masha_up_no";
obj_payer.faza[11]=2;
obj_payer.fake_up=1;
obj_payer.stop_y=256;
scr_text("Аа...",noone,noone,"Mike",_masha,"Masha");
scr_text("Ну, дальше у нас справа моя комната, а слева Анина.",noone,noone,"Mike",_masha,"Masha");
scr_text("Представь, мы вот так рядом совсем!",noone,noone,"Mike",_masha,"Masha");
scr_text("Мхм.",noone,_mike,"Mike",noone,"Masha");
scr_No_option("home_2floor3");
break
case "home_2floor3":
obj_payer.faza[9]=125;
obj_payer.faza[10]="masha_up_no";
obj_payer.faza[11]=2.6;
obj_payer.fake_up=1;
obj_payer.stop_y=130;
scr_text("И вот тут уже твоя комната слева- ой, то есть справа...",noone,noone,"Mike",_masha,"Masha");
scr_text("А слева тогда кто?",noone,_mike,"Mike",noone,"Masha");
scr_text("Ммм... Я не знаю.",noone,noone,"Mike",_masha,"Masha");
scr_text("Вроде бы там брат Ани, но я его особо вообще не видела.",noone,noone,"Mike",_masha,"Masha");
scr_text("А подожди, а где тогда ванная?",noone,_mike,"Mike",noone,"Masha");
scr_text("Она вместе с туалетом на первом этаже.",noone,noone,"Mike",_masha,"Masha");
scr_text("Может показаться, что там под лестницей кладовка или что-то такое, но это не так!",noone,noone,"Mike",_masha,"Masha");
scr_text("Этот дом не так прост как кажется.",noone,noone,"Mike",_masha,"Masha");
scr_text("Звучиш так, будто ты сама его проектировала.",noone,_mike,"Mike",noone,"Masha");
scr_text("Ну нет конечтно... мне просто нравится...",noone,noone,"Mike",_masha,"Masha");
scr_text("*зивок*",noone,noone,"Mike",_masha,"Masha");
scr_text("Мне кажется, тебе уже пора спать.",noone,_mike,"Mike",noone,"Masha");
scr_text("Но я не хочу ешё...",noone,noone,"Mike",_masha,"Masha");
scr_text("Но подожди, разве тебе завтра не надо будет уже идти в школу?",noone,_mike,"Mike",noone,"Masha");
scr_text("Ой...",noone,noone,"Mike",_masha,"Masha");
scr_text("Хмх, давай, завтра должен быть насыщенный день для нас обоих.",noone,_mike,"Mike",noone,"Masha");
scr_text("ладно...",noone,noone,"Mike",_masha,"Masha");
scr_text("Спокойной ночи.",noone,_mike,"Mike",noone,"Masha");
scr_text("Спокойной ночи, приятных снов, и добрых сказок!",noone,noone,"Mike",_masha,"Masha");
scr_text("Хехе, это ты откуда взяла?",noone,_mike,"Mike",noone,"Masha");
scr_No_option("home_2floor4");
break
case "home_2floor4":
obj_payer.faza[9]=248;
obj_payer.faza[10]="masha_down";
obj_payer.faza[11]=2;
obj_payer.sprite_index=spgd_
scr_text("Сама придумала.",noone,noone,"Mike",_masha,"Masha");
scr_text("Ну ладно...",noone,_mike,"Mike",noone,"Masha");
scr_text("Маме всегда нравилась эта фраза.",noone,noone,"Mike",_masha,"Masha");
scr_No_option("home_2floor4.1");
break
case "home_2floor4.1":
obj_payer.faza[9]=248;
obj_payer.faza[10]="masha_down_no";
obj_payer.faza[11]=2;
scr_text("Поскорей бы она уже вернулась...",noone,noone,"Mike",_masha,"Masha");
scr_No_option("home_2floor5");
break
case "home_2floor5":
obj_payer.sprite_index=spgr_
obj_payer.faza[9]=212;
obj_payer.faza[10]="masha_dis_right";
obj_payer.faza[11]=0.9;
obj_payer.faza[0]=1.1;
scr_text("(Чтож, как сказала Маша, моя комната слева.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Стоит ли мне зайти в неё?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","talk_end","No");
scr_option("Да","home_make_room","Yes");
break;

case "home_door_ray":
scr_text("(Заперто)...",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Интересно, что это за брат у Ани?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think","end");
break;

case "home_door_masha_0":
scr_text("(Заперто)",noone, _mike,"Mike",noone,noone,0.6,"Font_think","end");
break;

case "home_door_anna_0":
scr_text("(Заперто)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Я же сказала, стучись перед тем как войти!",noone,noone,"Mike",_anya,"Anya");
scr_text("[jitter]Извини[/jitter], я даже не знал, что это твоя комната.",noone, _mike,"Mike_awk",noone,"Anya");
scr_text("*вздох*",noone,noone,"Mike_awk",_anya,"Anya",0.6,"Font_main","end");
break;

case "home_door_make_0":
scr_text("(Чтож, как сказала Маша, моя комната слева.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Стоит ли мне зайти в неё?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","talk_end","No");
scr_option("Да","home_make_room","Yes");
break;


case "home_make_room":
scr_black(black_no,-1.5);
scr_text("...",noone, _mike,"Mike");
scr_text("(Я медленно повернул ручку двери...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_make_room_");

break;

case "home_make_room_":
scr_black(black_black,0);
obj_payer.phy_position_x=300;
obj_payer.phy_position_y=270;

scr_text("(...и вошёл в свою комнату)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_make_room1");
break

case "home_make_room1":
obj_payer.sprite_index=spsd_;
room_goto(room_room);
scr_black(black_no,1.5);
scr_text("(В неё уже сложены мои вещи.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Теперь мне стоит разлодить их всех по местам...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Надеюсь, это не займёт слишком много времени...",noone, _mike,"Mike",noone,noone,0.6);
scr_No_option("home_make_room1.1");
break
case "home_make_room1.1":
scr_black(black_no,-1.5);
obj_payer.fake_up=1;
scr_text("(Наверное, стоит начать с того угла...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");

scr_text("...",noone, _mike,"Mike",noone,noone,0.6);scr_No_option("home_make_room1.2");
break
case "home_make_room1.2":
obj_payer.fake_up=0;
scr_black(black_black,0);
scr_text("(Это оказалось более нудно, чем я думал)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone, _mike,"Mike",noone,noone,0.6);
scr_text("(И в остальных углах комнаты тоже есть вещи)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone, _mike,"Mike",noone,noone,0.6);
scr_No_option("home_make_room1.3");
break
case "home_make_room1.3":
scr_text("Наканец-то я закончил...",noone, _mike,"Mike",noone,noone,0.6);
scr_sound_sette(0,Sng_Slowly,true,1);
obj_payer.phy_position_x=1045;
obj_payer.phy_position_y=600;
scr_text("(Не думая ни о чём более я лёг в кровать)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Этот день...",noone, _mike,"Mike");
scr_text("Так много произошло...",noone, _mike,"Mike");
scr_text("Переезд,",noone, _mike,"Mike");
scr_text("Встреча с новыми людьми,",noone, _mike,"Mike");
scr_text("И завтра...",noone, _mike,"Mike");
scr_text("Завтра мне уже надо будет идти в школу.",noone, _mike,"Mike");
scr_text("Папа сказал познакомиться со всеми...",noone, _mike,"Mike");
scr_text("Надеюсь, всё будет хорошо.",noone, _mike,"Mike");
scr_text("...",noone, _mike,"Mike");
scr_No_option("home_make_room1.4");
break
case "home_make_room1.4":
room_goto(room_faceles);
scr_text("(Внезапно мне вспомнился сон, что приснился во время поездки)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Что же это было?",noone, _mike,"Mike");
scr_text("Почему он был настолько реален?",noone, _mike,"Mike");
scr_text("Приснится ли он снова?",noone, _mike,"Mike");
scr_text("Был ли это обычный сон...",noone, _mike,"Mike");
scr_text("(Или...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Или... нет..?",noone, _mike,"Mike");
scr_text("...",noone, _mike,"Mike");
scr_text(" . . . ",noone, _mike,"Mike");
scr_text("(Эти мысли окружили меня, не дали уснуть.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_make_room2");
break
case "home_make_room2":
scr_black(black_no,0.6);
scr_sound_sette(1,Sng_Timeless,true,0);
scr_text("(Медленно открывая свои глаза, я понял, что лежу я уже не в своей кровати)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Что это за пол?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Он выглядит не как пол из моей комнаты...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Вы наконец-то пришли.",noone,noone,"Mike","???");
scr_text("[shake]Г-... Где я[/shake]? Кто ты такой?",noone, _mike,"Mike");
scr_text("(Какой-то голос заговорил со мной.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text(" Я ждал момента, когда Вы сможете попасть сюда.",noone,noone,"Mike","???");
scr_text("(Не ответив, я решил осмотреться вокруг)",noone, _mike,"Mike",noone,noone,0.6,"Font_think","end");
break
/*
case "home_make_faceless_1":
scr_text("Перед тем как попасть сюда, Вы, должно быть,",noone,noone,"Mike","???","Faceless");
scr_text("Скованные, Вы не могли двигаться, не могли говорить, и не могли меня слышать.",noone,noone,"Mike","???","Faceless");
scr_No_option("home_make_faceless_1.");
break*/
case "home_make_faceless_1":
//global.main_quests[1].activation=2
//scr_text("(Так вот что произошло со мной тогда...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
//scr_text("(Сказав это он протянул мне чашу воды.)",noone, _mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Вы хотите пить? Впервые попав в этот мир, Вы можете испытывать усталость.",noone,noone,"Mike","???","Faceless");
scr_option("Нет","home_make_faceless_1.1","No");
scr_option("Да","home_make_faceless_1.2","Yes");
break;
case "home_make_faceless_1.1":
scr_text("Нет... Спасибо.",noone, _mike,"Mike",noone,"Faceless");
scr_text("Вы не доверяете мне?",noone,noone,"Mike","???","Faceless");
scr_text("...",noone, _mike,"Mike",noone,"Faceless");
scr_text("Жаль.",noone,noone,"Mike","???","Faceless");
scr_No_option("home_make_faceless_1.3");
break;
case "home_make_faceless_1.2":
scr_text("(Не смотря на моё недоверие к нему, я правда хочу пить.)",noone, _mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(Я осторожно взял чашу и выпил всю воду из неё)",noone, _mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(Вместе с утолением жажды я почувствовал восстановление своих сил)",noone, _mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Вам лучше?",noone,noone,"Mike","???","Faceless");
scr_text("Да... Спасибо.",noone, _mike,"Mike",noone,"Faceless");
scr_No_option("home_make_faceless_1.3");
break;

case "home_make_faceless_1.3":
scr_text("Ещё раз благодарю Вас.",noone,noone,"Mike","???","Faceless");
scr_text("О чём вы?",noone, _mike,"Mike",noone,"Faceless");
scr_text("О той воле, которой наполнено Ваше сердце.",noone,noone,"Mike","???","Faceless");
scr_text("Если бы не Ваши стремления к лучшему, то мы бы не встретились.",noone,noone,"Mike","???","Faceless");
scr_text("Именно Ваше старание позволило мне находится тут.",noone,noone,"Mike","???","Faceless");
scr_text("А кто вы такой?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Как вас зовут?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Моё имя?.. ...",noone,noone,"Mike","???","Faceless");
scr_text("Безликий.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Необычное имя.",noone, _mike,"Mike",noone,"Faceless");
scr_text("Да, но подходит мне оно лучше некуда.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Почему?",noone, _mike,"Mike",noone,"Faceless");
scr_text("У меня буквально нет лица.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Иначе я бы не носил свою маску...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone, _mike,"Mike_awk",noone,"Faceless");
scr_text("Что-то не так?",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Просто-",noone, _mike,"Mike",noone,"Faceless");
scr_text("Просто... я задумался.",noone, _mike,"Mike",noone,"Faceless");
scr_text("Это ведь сон, так ведь?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Ведь ложиться спать в своей комнате, а просыпаться чёрт знает где... немного необычно.",noone, _mike,"Mike",noone,"Faceless");
scr_text("Да, это действительно сон.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Но тогда почему мои чувства в нём столь реалистичны?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Всё потому что ''сон'' этот не обычный.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Что это значит?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Видите ли... Я создатель всех людских снов.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("И реальным этот ''сон'' для Вас сделало моё [c_yellow]Доверие[c_white].",noone,noone,"Mike",_faceless,"Faceless");
scr_text("До...верие?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Это то, что такие существа как я могут дать Вам.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("С его помощью Вы можете находиться в этом мире так же, как и в своём собственном.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Мх... У меня ещё так много вопросов...",noone, _mike,"Mike",noone,"Faceless");
scr_text("Извините меня, но похоже Вам придётся сохранить свои вопросы до нашей следующей встречи.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Всё-таки будет на правильно продолжать нашу беседу не дождавшись [c_yellow]второго гостя[c_white].",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Ч- что?",noone, _mike,"Mike",noone,"Faceless");
scr_No_option("home_make_faceless_1.4");
break;
case "home_make_faceless_1.4":
scr_black(white_no,-0.5)
scr_text("(Не успев закончить мысль я начал как будто выпадать из своего окружения)",noone, _mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Стойте!",noone, _mike,"Mike",noone,"Faceless");
scr_text("Не волнуйтесь. У нас ещё будет время.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А пока что...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("До свидания. Надеюсь, мы встретимся следующей ночью.",noone,noone,"Mike",_faceless,"Faceless");
scr_No_option("home_make_faceless_1.41");
break;
case "home_make_faceless_1.41":
obj_payer.phy_position_x=504;
obj_payer.phy_position_y=165;
scr_black(black_black,0);
scr_sound_sette(0,Sng_Timeless,true,0);
scr_text("...",noone,_mike,noone,noone,noone);
scr_text("...?",noone,_mike,noone,noone,noone);
scr_text("Что произошло..?",noone,_mike,noone,noone,noone);
scr_text("(Вроде бы я уже не сплю...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Но при этом я и не проснулся...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_make_faceless_1.42");
break;
case "home_make_faceless_1.42":
obj_pic.picture=pic_something_here;
scr_black(black_no,1);
scr_text("Время...",noone,noone,noone,"???",noone);
scr_text("?!",noone,_mike,noone,noone,noone);
scr_text("(Я не один в своей комнате?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Время... пришло...",noone,noone,noone,"???",noone);
scr_text("(Я пытаюсь пошевелиться, но всё безрезультатно)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(...дышать не могу...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Этот мир...",noone,noone,noone,"???",noone);
scr_text("Уже скоро падёт...",noone,noone,noone,"???",noone);
scr_No_option("home_make_faceless_1.5");
break;
case "home_make_faceless_1.5":
room_goto(room_room);
scr_black(black_no,1)
obj_time.time_change=0;
obj_pic.picture=no_no;
scr_text("?!",noone, _mike,"Mike",noone,noone);
scr_text("(Внезапно я вернулся в реальность, от чего чуть ли не выпал с кровати)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");

scr_No_option("home_make_faceless_1.61");
break;
case "home_make_faceless_1.61":
obj_payer.sprite_index=spgd_
scr_text("(Быстро огляделся вокруг)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Никого нет...",noone, _mike,"Mike");
scr_text("(Но я точно видел что-то)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Фиолетовые глаза где-то в дали комнаты...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone, _mike,"Mike");
scr_No_option("home_make_faceless_1.6");
break;
case "home_make_faceless_1.6":
obj_payer.moment_skip=1;
scr_text("(Медленно вдохнув я попытался прийти в себя-)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_make_faceless_1.7");
break;
case "home_make_faceless_1.7":
obj_payer.moment_skip=0;
obj_payer.sprite_index=spgl_
scr_text("*Тук тук тук*",noone,noone,noone,noone,noone);
scr_text("А?",noone, _mike,"Mike",noone,noone);
scr_text("(Внезапные стуки в дверь снова встревожили меня)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Вставай, а то в школу опоздаешь.",noone,noone,"Mike",_anya,"Anya");
scr_text("[jitter]Д- да[/jitter]... я уже встал.",noone, _mike,"Mike",noone,noone);
scr_text("И одеться для школы не забудь.",noone, noone,"Mike",_anya,"Anya");
scr_text("? Но мне ведь ещё не выдали школьную форму.",noone, _mike,"Mike",noone,noone);
scr_text("У нас и не будет личной школьной формы. Просто надень какую-нибудь нарядную одежду.",noone, noone,"Mike",_anya,"Anya");

scr_No_option("home_make_school");
break;
case "home_make_school":


scr_sound_sette(1,Sng_Slowly,true,0)
scr_text("Хорошоб хорошо...",noone, _mike,"Mike",noone,noone,0.6,"Font_main");
scr_text("(Мх, этот сон прервался на самом важном месте...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Наверное, пока что стоит попытаться забыть об этом)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Всё-таки школу никто не отменял.)",noone, _mike,"Mike_awk",noone,noone,0.6,"Font_think","end");
scr_No_option("home_make_school.");
break;
case "home_make_school.":
global.main_quests[2].activation=1
scr_No_text()
break;

case "Before school bed":
scr_text("Это моя кровать.",noone, _mike,"Mike",noone,noone,0.6);
scr_text("Вполне удобная.",noone, _mike,"Mike");
scr_text("За ней находится лампа.",noone, _mike,"Mike");
scr_text("Идеальна для чтения перед сном.",noone, _mike,"Mike");
scr_text("Свет получается слабый, но достаточный, чтоб глаза не напрягались.",noone, _mike,"Mike",noone,noone,0.6,"Font_main","end");
break;
case "Before school table":
scr_text("Мой компьютерный стол.",noone, _mike,"Mike",noone,noone,0.6);
scr_text("... хотя он и предназначен не только для компьютера...",noone, _mike,"Mike");
scr_text("За ним ещё можно делать уроки.",noone, _mike,"Mike",noone,noone,0.6,"Font_main","end");
break;
case "Before school bookskaf":
scr_text("Не, я, конечно, понимаю, что читать полезно, но, собственно, зачем мне столько книг?",noone, _mike,"Mike",noone,noone,0.6);
scr_text("Хотя, смотря на их количество, наверо, я, думаю, что, лучше много, чем вообще нисколько... Так ведь?",noone, _mike,"Mike",noone,noone,0.6,"Font_main","end");
break;

case "Before school divan":
scr_text("Диван...",noone, _mike,"Mike",noone,noone,0.6);
scr_text("... зачем я вообще начал анализировать свою комнату?",noone, _mike,"Mike_awk",noone,noone,1,"Font_main","end");
break;
case "Before school tumba":
scr_text("Моя тумбочка",noone, _mike,"Mike",noone,noone,0.6);
scr_text("Здесь находятся мои школьные принадлежности",noone);
scr_text("И часы...",noone);
scr_text("Хоть они и выглядят механическими, но на самом деле они электронные.",noone);
scr_text("Их выдаёт электронный писк при звонке.",noone, _mike,"Mike",noone,noone,0.6,"Font_main","end");
break;
case "Before school stol":
scr_text("Стол",noone, _mike,"Mike",noone,noone,0.6);
scr_text("[wobble]Стол...[/wobble]",noone, _mike,"Mike",noone,noone,0.4);
scr_text("[wave]Стол[/wave]?",noone, _mike,"Mike",noone,noone,0.1);
scr_text("Стол!",noone, _mike,"Mike",noone,noone,1);
scr_text("*Чем больше вы размышляете о важности этого стола в лоре вашей комнаты, тем сложнее вам найти логичный ответ его существования*",noone,noone,"Mike",noone,noone,100,"Font_main","end");
break;

case "Before school door":
scr_text("Думаю, что в начале надо заглянуть в шкаф и найти там что-нибудь ''нарядное''.",noone, _mike,"Mike",noone,noone,0.6,"Font_main","end");
break;

case "Before school skaf":

scr_text("Это мой шкаф.",noone, _mike,"Mike",noone,noone,0.6);
scr_text("Стоит ли мне уже переодеться и выйти за Аней?",noone, _mike,"Mike");
scr_option("Нет","talk_end","No");
scr_option("Да","home_make_school1","Yes");
break;
case "home_make_school1":
obj_payer.faza[0]=2;
scr_black(black_no,-2)
scr_text("(Я быстро натянул на себя первую попавшуюся под руку рубашку)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("home_make_school2");
break;
case "home_make_school2":
scr_black(black_black,0);
obj_payer.phy_position_x=190;
obj_payer.phy_position_y=300;
scr_text("Ты уже готов?",noone,noone,"Mike",_anya,"Anya");
scr_text("Почти...",noone, _mike,"Mike",noone,"Anya");
scr_text("(Стоит ли мне так же надеть жилет?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","home_make_school2.1","No");
scr_option("Да","home_make_school2.2","Yes");
break;
case "home_make_school2.1":
obj_payer.cloth="school"
obj_payer.sprite_index=spgd_s
scr_black(black_no,1)
room_goto(room_home1);
scr_text("[shake]...[/shake]",noone,noone,"Mike",_anya,"Anya");
scr_No_option("home_make_school3");
break;
case "home_make_school2.2":
obj_payer.cloth="school_1"
obj_payer.sprite_index=spgd_s_1
scr_black(black_no,1)
room_goto(room_home1);
scr_text("[shake]...[/shake]",noone,noone,"Mike",_anya,"Anya");
scr_No_option("home_make_school3");
break;
case "home_make_school3":
scr_text("А по лучше ничего не было?",noone,noone,"Mike_awk",_anya,"Anya");
scr_text("Хотя... ладно, и так сойдёт.",noone,noone,"Mike_awk",_anya,"Anya");
scr_No_option("home_make_school4");
break;
case "home_make_school4":
obj_payer.faza[9]=220;
obj_payer.faza[10]="masha_down_no";
obj_payer.faza[11]=1.2;

switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
scr_text("О? Майк, это ты?",noone,noone,"Mike",noone,"Anya");
scr_text("Привет...",noone,noone,"Mike","???","Masha");
scr_text("*вздох*",noone, _mike,"Mike",noone,"Masha");
scr_text("(Маша... моя двоюродная сестра...)",noone, _mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("(И когда она успела так вырасти?)",noone, _mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("(Она уже носит мою старую футболку...)",noone, _mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("(Хоть она ей всё ещё велика.)",noone, _mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("Привет, Маш... Давно не виделись.",noone, _mike,"Mike",noone,"Masha");
scr_text("(0 ω 0)",noone,noone,"Mike",_masha,"Masha");
scr_text("... Ты приехал вчера вечером?",noone,noone,"Mike",_masha,"Masha");
scr_text("[jitter]А почему мне не сказал[/jitter]!?",noone,noone,"Mike",_masha,"Masha");
scr_text("Ты уже спала... я не хотел будить тебя.",noone, _mike,"Mike",noone,"Masha");
scr_text("*вздох*",noone,noone,"Mike",_masha,"Masha");
scr_text("Ясно... А можно мне...",noone,noone,"Mike",_masha,"Masha");
scr_text("Маш, поговоришь с ним попозже? А то мы можем опоздать.",noone, _anya,"Anya",noone,"Masha");
scr_text("А куда? Вы идёте куда-то?",noone,noone,"Anya",_masha,"Masha");
scr_text("Да, мы идём в школу.",noone, _mike,"Mike",noone,"Masha");
scr_text("[wave]Школу[wave]? А зачем?",noone,noone,"Mike",_masha,"Masha");
scr_text("Хороший вопрос...",noone, _mike,"Mike",noone,"Masha");
scr_text("Нам необходимо это для нашего развития.",noone, _anya,"Anya",noone,"Masha");
scr_text("А в мультиках не так говорилось...",noone,noone,"Anya",_masha,"Masha");
scr_text("Там сказали, что в школе общаются с друзьями.",noone,noone,"Anya",_masha,"Masha");
scr_text("И что все дети там - это супер герои, что скрывают это...",noone,noone,"Anya",_masha,"Masha");
scr_text("О! И ещё там должно быть много интересных игр.",noone,noone,"Anya",_masha,"Masha");
scr_text("Но в реальности там больше учатся, чем играют.",noone, _mike,"Mike",noone,"Masha");
scr_text("А почему нельзя и то и другое?",noone,noone,"Mike",_masha,"Masha");
scr_text("Учиться и играть вместе?",noone,noone,"Mike",_masha,"Masha");
scr_text("Наверное, потому что это слишком сложно.",noone, _mike,"Mike",noone,"Masha");
scr_text("(0 __ 0)",noone,noone,"Mike",_masha,"Masha")
scr_text("А... когда ты вернёшься, мы поиграем вместе?",noone,noone,"Mike",_masha,"Masha")
scr_text("...а то без мамы скучно...",noone,noone,"Mike",_masha,"Masha")
scr_text("Хорошо.",noone, _mike,"Mike",noone,"Masha");
scr_text("Майк, пошли быстрее, если не хочешь опоздать.",noone, _anya,"Anya",noone,"Masha");
scr_text("Ладно, ладно...",noone, _mike,"Mike",noone,"Masha");
scr_text("Но тогда хотя бы возьми эту конфетку!",noone, noone,"Mike",_masha,"Masha");
scr_text("Я её специально для тебя подготовила.",noone, noone,"Mike",_masha,"Masha");
scr_No_option("home_make_school5");
break;
case "home_make_school5":
inv_add(obj_inventory_give,2)
inv_swap(obj_inventory_give,0,obj_inventory_give,4)
scr_text("Просто возьми и перетащи её себе в карманы).",noone, noone,"Mike",_masha,"Masha");
scr_text("С- спасибо...",noone, _mike,"Mike",noone,"Masha");
scr_text("Всегда пожалйста!",noone, noone,"Mike",_masha,"Masha");
scr_text("Ладно, нам уже пора идти...",noone, _mike,"Mike",noone,"Masha");
scr_text("Пока, Маш.",noone, _anya,"Anya",noone,"Masha");
scr_text("Увидимся после школы.",noone, _mike,"Mike",noone,"Masha");
scr_text("...",noone,noone,"Mike",_masha,"Masha")
scr_No_option("home_make_school_end");
break;

case "home_make_school_end":
obj_payer.fake_down=1;
obj_payer.faza[9]=740;
obj_payer.faza[10]="anna_down";
obj_payer.faza[11]=1.35;
scr_black(black_no,-0.7)
scr_text("А ''после школы'' - это когда?",noone,noone,"Mike",_masha,"Masha")
scr_text("...",noone,noone,"Mike",_masha,"Masha")
scr_No_option("home_go_school");
break;

case "home_go_school":
scr_black(black_black,0);
scr_text(" . . .",noone,noone,"Mike",noone,"Anya")
obj_payer.fake_down=0;
obj_payer.phy_position_x=540;
obj_payer.phy_position_y=150;
keyboard_key_press(ord("S"));
keyboard_key_release(ord("S"));
obj_payer.faza[9]=0;
obj_payer.faza[10]=0;
obj_payer.faza[11]=0;
scr_No_option("home_go_school1");
break;
case "home_go_school1":
room_goto(_Room2);
scr_black(black_no,1);
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgd_s;
	break;
	case "school_1":
	sprite_index=spgd_s_1;
	break;
	}
scr_text("Улица...",noone,_mike,"Mike",noone,"Anya");
scr_text("Когда я в прошлый раз был тут было очень темно.",noone,_mike,"Mike",noone,"Anya");
scr_text("Сейчас здесь намного красивее...",noone,_mike,"Mike",noone,"Anya");
scr_text("Ладно. Пошли скорее...",noone,noone,"Mike",_anya,"Anya");
scr_No_option("home_go_school3");
break;
case "home_go_school3":
obj_payer.fake_down=1;
obj_payer.faza[9]=740;
obj_payer.faza[10]="anna_down";
obj_payer.faza[11]=1.35;
scr_black(black_no,-2)
obj_payer.moment_skip=1;
scr_text("Мы вместе дошли до школы.",noone,_mike,"Mike");
scr_text("После этого мы потратили немного времени на поиск нужного кабинета.",noone,_mike,"Mike");
scr_No_option("school_");
break;

case "school_":

obj_payer.faza[8]=1;

obj_payer.phy_position_x=95;
obj_payer.phy_position_y=230;
scr_black(black_black,-2)
scr_text("И вошли в него...",noone,_mike,"Mike");
scr_No_option("school1");
break;

case "school1":
room_goto(room_school);
scr_black(black_no,1);
obj_payer.fake_down=0;
obj_payer.moment_skip=0;
scr_sound_sette(0,Sng_Slowly,true,1);
scr_sound_sette(1,Sng_Colorful_Flowers,true,0);
scr_text("О, ещё люди!",noone,noone,"Mike",noone,"Anya");
scr_text("Новенькие? Наконец то, а то тут уже становится скучно.",noone,noone,"Mike",noone,"Anya");
scr_text("А сколько нас должно быть в итоге то?",noone,noone,"Mike",noone,"Anya");
scr_text("Вроде четырнадцать.",noone,noone,"Mike",noone,"Anya");
scr_text("Там ещё скоро должна моя сестра прийти.",noone,noone,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Привет...",noone,_mike,"Mike",noone,"Anya");
scr_text("Ой, да что вы там в проходе встали, идите к нам, тут и поговорим.",noone,noone,"Mike",noone,"Anya");
scr_text("Поздороваешься с ними, а затем я спрошу у тебя кое-что...",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main");
scr_No_option("school1.1");
break;

case "school1.1":
obj_payer.faza[9]=72;
obj_payer.faza[10]="zhenya_up";
obj_payer.faza[11]=1;
scr_No_text();
break;


case "andrew_1":
if (obj_payer.faza[1]==0 or obj_payer.faza[1]==1.5) 
{
scr_text("При-",noone,_mike,"Mike",noone,noone);
obj_payer.moment_skip=1;
scr_No_option("andrew_1.1");
}

if (obj_payer.faza[1]=1)
{
scr_text("О, и снова привет.",noone,noone,"Mike",_andrey,noone);
scr_text("...",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
}

if (obj_payer.faza[1]=2) 
{
scr_text("И снова привет.",noone,noone,"Mike",_andrey,noone);
scr_text("А ты часто рисуешь?",noone,_mike,"Mike",noone,noone);
scr_text("Да. Тебе об этом Настя рассказала?",noone,noone,"Mike",_andrey,noone);
scr_text("Ну да. А что?",noone,_mike,"Mike",noone,noone);
scr_text("Ничего.",noone,noone,"Mike",_andrey,noone);
scr_text("...",noone,noone,"Mike",_andrey,noone);
scr_No_option("andrew_1_give")
obj_payer.faza[1]=1

}



break;

case "andrew_1.1":
obj_payer.moment_skip=0;
scr_text("[wave]Привет[/wave]. Меня Андрей зовут.",noone,noone,"Mike",_andrey,noone);
scr_text("А меня Майк.",noone,_mike,"Mike",noone,noone);
scr_text("[wave]Привет[/wave], Майк.",noone,noone,"Mike",_andrey,noone);
scr_text("...но ты же уже здоровался...",noone,_mike,"Mike",noone,noone);
scr_text("А я могу ещё раз.",noone,noone,"Mike",_andrey,noone);
scr_text("[wave]Привет[/wave], Майк.",noone,noone,"Mike",_andrey,noone);
scr_text("(... и каждый раз он жмёт мне руку)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("А её как зовут?",noone,noone,"Mike",_andrey,noone);
scr_text("А, это Аня.",noone,_mike,"Mike",noone,noone);
scr_text("[pulse]ПРИВЕТ[/pulse], [pulse]АНЯ[/pulse].",noone,noone,"Mike",_andrey,noone);
scr_text("господи...",noone,_anya,"Anya",noone,noone);
scr_text("А ты любишь здороваться?",noone,_mike,"Mike",noone,noone);
scr_text("Да. Просто хочется.",noone,noone,"Mike",_andrey,noone);
if (obj_payer.faza[1]==1.5)
{
scr_text("Ладно, буду знать.",noone,_mike,"Mike",noone);
scr_text("...",noone,_mike,"Mike",noone);
scr_text("Так ты часто рисуешь?",noone,_mike,"Mike",noone,noone);
scr_text("Да. Тебе об этом Настя рассказала?",noone,noone,"Mike",_andrey,noone);
scr_text("Ну да. А что?",noone,_mike,"Mike",noone,noone);
scr_text("Ничего.",noone,noone,"Mike",_andrey,noone);
scr_text("...",noone,noone,"Mike",_andrey,noone);
scr_No_option("andrew_1_give")
}
else
{
scr_text("Ладно, буду знать.",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
obj_payer.faza[1]=1	
}

break
case "andrew_1_give":
inv_add(obj_inventory_give,1)
inv_swap(obj_inventory_give,0,obj_inventory_give,4)
scr_text("Вот смотри. Можешь спокойно взять его.",noone,_mike,"Mike",_andrey,noone);
scr_text("*Получен рисунок со смайликом*",noone,noone,"Mike",noone,noone);
scr_text("Правда он прикольный?",noone,noone,"Mike",_andrey,noone);
scr_text("Да, красивый.",noone,_mike,"Mike",noone,noone);
scr_text("Можешь оставить его себе. У меня куча таких, и других, и всяких...",noone,noone,"Mike",_andrey,noone);
scr_text("Ладно, спасибо.",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");

obj_payer.faza[1]=1
break;
case "zhenya_1":
obj_payer.faza[9]=73;
obj_payer.faza[10]="zhenya_down";
obj_payer.faza[11]=1;
if obj_payer.faza[0]!=3 
{

if obj_payer.faza[3]==0
{
scr_text("Привет, меня зовут Женя.",noone,noone,"Mike",_zhenya);
scr_text("Меня Майк зовут.",noone,_mike,"Mike",noone);
scr_text("Ну привет, Майк. Мне очень приятно познакомиться с тобой.",noone,noone,"Mike",_zhenya);
scr_text("А меня зовут Аня.",noone,_anya,"Anya");
scr_text("И тебе привет, Аня. Мне и с тобой очень приятно познакомиться.",noone,noone,"Anya",_zhenya);
scr_text("...",noone,_anya,"Anya");
scr_text("Что-то не так?",noone,noone,"Anya",_zhenya);
scr_text("Не, я просто думаю... мне кажется, я уже где-то тебя видела...",noone,_anya,"Anya");
scr_text("Нуу... Может, вчера? У меня было выступление с моими работами что были нарисованны мной за прошедшее лето.",noone,noone,"Anya",_zhenya);
scr_text("А ты умеешь рисовать?",noone,_mike,"Mike",noone);
scr_text("Ну, я обожаю рисовать. Передать все свои эмоции у меня намного лучше получается именно через холст, нежели объяснить их словами.",noone,noone,"Mike",_zhenya);
scr_text("Хм, наверное рисование отнимает у тебя много времени.",noone,_mike,"Mike",noone);
scr_text("Ну, если честно, то да...",noone,noone,"Mike",_zhenya);
scr_text("...иногда я просто не нахожу времени на еду и сон.",noone,noone,"Mike",_zhenya);
scr_text("Даже так!?",noone,_mike,"Mike",noone);
scr_text("... хм, а как твои родители относятся к этому?",noone,_anya,"Anya",noone);
scr_text("Ну... они поддерживают мои начинания, но иногда папа говорит что я слишком сильно погружаюсь в свою работу...",noone,noone,"Anya",_zhenya);
scr_text("Хотя с ними я вижусь не так часто… Они всё время работают.",noone,noone,"Mike",_zhenya);
scr_text("Ну... даже с братиком я общаюсь больше, чем с родителями...",noone,noone,"Mike",_zhenya);
scr_text("У тебя есть брат?",noone,_mike,"Mike",noone);
scr_text("Ну да, у меня есть младший брат. Его Лео зовут.",noone,noone,"Mike",_zhenya);
scr_text("А у меня младшая сестра есть.",noone,_mike,"Mike",noone);
scr_text("Да ну, и какая она? Хорошая?",noone,noone,"Mike",_zhenya);
scr_text("Наверное, как и все дети?",noone,_mike,"Mike",noone);
scr_text("Майк, не говори того чего не знаешь.",noone,noone,"Mike",_anya,"Anya");
scr_text("А что?",noone,_mike,"Mike",noone,"Anya");
scr_text("Обычно дети куда более надоедливы.",noone,noone,"Mike",_anya,"Anya");
scr_text("Ну, я, вроде, был нормальным ребёнокм...",noone,noone,"Mike",_zhenya);
scr_text("...",noone,_mike,"Mike",noone);
scr_text("Ладно, не важно...",noone,noone,"Mike",_zhenya);


scr_text("Хм... Наверное, говоря со мной и с нашими одноклассниками ты сможешь научиться понятней общаться.",noone,_mike,"Mike",noone);
scr_text("Наверное.",noone,noone,"Mike",_zhenya);
scr_text("Ну я хочу научиться понятно выражать свои мысли и чувства...",noone,noone,"Mike",_zhenya);
scr_text("Майк, а сможешь помочь мне научиться общаться лучше?",noone,noone,"Mike",_zhenya);
scr_text("Вероятно....",noone,_mike,"Mike",noone);

scr_text("Хорошо.",noone,noone,"Mike",_zhenya);
scr_text("Ну тогда потом я приду к тебе домой? Или ты придёшь ко мне?",noone,noone,"Mike",_zhenya);
scr_text("Эм... а может лучше просто поговорим на улице?",noone,_mike,"Mike",noone);
scr_text("Ой, снова глупость?",noone,noone,"Mike",_zhenya);
scr_text("...",noone,noone,"Mike",_zhenya);
scr_text("Ну... да... рано нам ещё домой друг к другу ходить...",noone,noone,"Mike",_zhenya,noone,0.8);
scr_text("Н-нет... я не про то что мы ещё малы для такого...",noone,noone,"Mike",_zhenya,noone,1);
scr_text("В смысле я и про это тоже, но мы же буквально только что познакомились...",noone,noone,"Mike",_zhenya,noone,1.2);
scr_No_option("zhenya_1.1");
}

if obj_payer.faza[3]==1
{

scr_text("Ну... если вдруг ты уже готов помочь мне в обучении общению с людьми, то мне ещё требуется подготовка...",noone,noone,"Mike",_zhenya,0.6,"Font_main","end");
scr_No_option("school1.1");
}
}

break
case "zhenya_1.1":
scr_text("...Ну в общем-",noone,noone,"Mike",_zhenya);
obj_payer.moment_skip=1;
scr_No_option("zhenya_1.2");
break
case "zhenya_1.2":
obj_payer.moment_skip=0;
scr_text("Да я понял тебя...",noone,_mike,"Mike",noone);
scr_text("...",noone,_anya,"Anya",noone,noone);
scr_text("Ммм? Ж- Женя, ты тут?...",noone,noone,"Anya","???",noone);
scr_text("(В кабинет зашёл какой-то мальчик)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("О, а вот и он!",noone,noone,"Mike",_zhenya,noone);
scr_text("(Услышав Женин голос, он сразу побежал ближе)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Мх, ты не сопроводил меня до кабинета(",noone,noone,"Mike","Женин брат",noone);
scr_text("А если бы я потерялся?",noone,noone,"Mike","Женин брат",noone);
scr_text("М-да, извини... Данная мысль даже и не пришла ко мне в голову.",noone,noone,"Mike",_zhenya,noone);
scr_text("Знакомьтесь, это Лео.",noone,noone,"Mike",_zhenya,noone);
scr_text("Вообще, Леонард, но можно просто Лео...",noone,noone,"Mike","Лео",noone);
scr_text("Хм, интересно что вы оказались в одном классе...",noone,_anya,"Anya",noone,noone);

scr_text("(После этого Лео задумался о чём-то)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Ты в порядке?",noone,noone,"Mike",_zhenya,noone);
scr_text("Да! Простая прогулка до школы же не могла меня утомить...",noone,noone,"Mike","Лео",noone);
scr_text("...",noone,noone,"Anya","Лео",noone);
scr_text("(На эту фразу ответ Жени составил тихое ''хмх''...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(интересно, что всё это значит...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");

scr_text("(не успел я до конца обдумать эту мысль, как дверь внезапно распахнулась от очередного ученика, что зашёл сюда)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Ух... И это тот класс, с которым я буду учиться?...",noone,noone,"Mike","???",noone);
scr_text("...Поччему он звучит столь презрительно?",noone,_anya,"Anya",noone,noone);
scr_text("Эм... Привет. Меня зовут Майк, а тебя как?",noone,_mike,"Mike",noone);
scr_text("Роман.",noone,noone,"Mike","Роман",noone);
scr_text("А можно просто Рома?",noone,_anya,"Anya",noone,noone);
scr_text("Мх, наверное..?",noone,noone,"Anya","Рома",noone);
scr_text("Я не думал об этом раньше",noone,noone,"Anya","Рома",noone);




obj_payer.faza[3]=1
scr_No_option("school1.1");
break

case "nastya_1":
if obj_payer.faza[2]==0
{
scr_text("Привет, меня зовут Настя.",noone,noone,"Mike",_nastya);
scr_text("А меня Майк.",noone,_mike,"Mike",noone);
scr_text("А я Аня",noone,_anya,"Anya");
scr_text("А чем вы увлекаетесь? ",noone,noone,"Anya",_nastya);
scr_text("Ну, там... рисование, или музыка, или что-нибудь ещё...",noone,noone,"Anya",_nastya);
scr_text("Я часто читаю детективы.",noone,_anya,"Anya");
scr_text("А ты?",noone,noone,"Mike",_nastya);
scr_text("(Не то чтобы я чем либо увлекался...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Но не думаю, что будет хорошо, если я скажу ей это...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Рисую","nastya_1_Рисую","I draw");
scr_option("Пою","nastya_1_Пою","I sing");
scr_option("Читаю","nastya_1_Читаю","I read");
scr_option("Играю","nastya_1_Играю","I play");
}

if obj_payer.faza[2]==1
{
scr_text("Уже пришёл за историями?",noone,noone,"Mike",_nastya);
scr_text("Я не думаю, что у меня хватит времени, чтоб рассказать их сейчас.",noone,noone,"Mike",_nastya);
scr_text("Поговорим позже, ладно?",noone,noone,"Mike",_nastya,noone,0.6,"Font_main","end");

}
break;

case "nastya_1_Рисую":
scr_text("Ну... я рисованием занимаюсь.",noone,_mike,"Mike",noone);
scr_text("О, тогда тебе надо будет подойти к Жене. Сможешь поговорить с профи изобразительного искусства.",noone,noone,"Mike",_nastya);
scr_text("Ну... я не очень то уж и хороший художник.",noone,_mike,"Mike",noone);
scr_text("Так, иногда, по приколу...",noone,_mike,"Mike",noone);
scr_text("А, ну можешь с Андреем поговорить, он тоже по приколу рисует.",noone,noone,"Mike",_nastya);
scr_text("(Хм, нверное надо будет поговорить с Андреем об этом)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Здесь что, все художники?",noone,_mike,"Mike",noone);
scr_text("Ну... я не рисую...",noone,noone,"Mike",_nastya);
scr_text("Я на сцене люблю выступать.",noone,noone,"Mike",_nastya);
if (obj_payer.faza[1]==1) obj_payer.faza[1]=2;
if (obj_payer.faza[1]==0) obj_payer.faza[1]=1.5;
scr_No_option("nastya_1.1");
break;

case "nastya_1_Пою":
scr_text("Я там песни пою разные...",noone,_mike,"Mike",noone);
scr_text("А, ну, значит, мы с тобой найдем общий язык.",noone,noone,"Mike",_nastya);
scr_text("А ты любишь петь?",noone,_mike,"Mike",noone);
scr_text("Иногда приходится делать это для моих интересов.",noone,noone,"Mike",_nastya);
scr_text("А насколько сильно ты этим увлекаешься?",noone,noone,"Mike",_nastya);
scr_text("Ну... я не то чтобы прям часто пою...",noone,_mike,"Mike",noone);
scr_text("...",noone,_mike,"Mike",noone);
scr_text("А для каких твоих интересов ты поёшь?",noone,_mike,"Mike",noone);
scr_text("Для своих выступлений на сцене.",noone,noone,"Mike",_nastya);
scr_No_option("nastya_1.1");
break;

case "nastya_1_Читаю":
scr_text("Ну... я читать люблю.",noone,_mike,"Mike",noone);
scr_text("А что читаешь?",noone,noone,"Mike",_nastya);
scr_text("Да так... всякое.",noone,_mike,"Mike",noone);
scr_text("Что под руку попадётся.",noone,_mike,"Mike",noone);
scr_text("То есть любимого жанра у тебя нет?",noone,noone,"Mike",_nastya);
scr_text("Ну, можно и так сказать.",noone,_mike,"Mike",noone);
scr_text("У меня тоже любимого жанра нет.",noone,noone,"Mike",_nastya);
scr_text("Хотя и читаю я не часто.",noone,noone,"Mike",_nastya);
scr_text("Почему же?",noone,_mike,"Mike",noone);
scr_text("Времени не хватает.",noone,noone,"Mike",_nastya);
scr_text("Я просто часто выступаю на сцене.",noone,noone,"Mike",_nastya);
scr_No_option("nastya_1.1");
break;

case "nastya_1_Играю":
scr_text("...играть люблю...",noone,_mike,"Mike",noone);
scr_text("(ну, хотя бы не вру...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("В игрушки?",noone,noone,"Mike",_nastya);
scr_text("(Смешок прошёлся по её лицу)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("*вздох*",noone,_anya,"Anya");
scr_text("Да ладно, я понимаю, что в компьютер.",noone,noone,_anya,_nastya);
scr_text("...",noone,_mike,"Mike",noone);
scr_text("А какие именно игры?",noone,noone,"Mike",_nastya);
scr_text("А без разницы.",noone,_mike,"Mike",noone);
scr_text("Главное, чтоб было интересно.",noone,_mike,"Mike",noone);
scr_text("Ясно... а я вот в ни во что не играю.",noone,noone,"Mike",_nastya);
scr_text("Слишком много важных дел.",noone,noone,"Mike",_nastya);
scr_text("А каких именно?",noone,_mike,"Mike",noone);
scr_text("Подготовка к выступлениям.",noone,noone,"Mike",_nastya);
scr_text("Что?",noone,_mike,"Mike",noone);
scr_text("Я на сцене выступаю.",noone,noone,"Mike",_nastya);
scr_No_option("nastya_1.1");
break;

case "nastya_1.1":
scr_text("Правда?",noone,_anya,"Anya",noone);
scr_text("Ага.",noone,noone,"Anya",_nastya);
scr_text("Прожить чужую жизнь на большой сцене под овации зрителей...",noone,noone,"Anya",_nastya);
scr_text("А ещё лучше, когда мне дают главную роль.",noone,noone,"Anya",_nastya);
scr_text("Сиять главной звездой всего представления...",noone,noone,"Anya",_nastya);
scr_text("Хм, вижу тебе это и правда нравится.",noone,_mike,"Mike",noone);
scr_text("Ага.",noone,noone,"Mike",_nastya);


scr_text("Я подумаю.",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
obj_payer.faza[2]=1
break;

case "edan_1":
if obj_payer.faza[4]==1
{
inv_open_box();
scr_text("...",noone,noone,"Mike",_adam,"Adam");
scr_text("(И снова он молчит)",noone, _mike,"Mike",noone,"Adam",0.6,"Font_think");
scr_text("(Как будто обдумывает какой-то сложный вопрос)",noone, _mike,"Mike",noone,"Adam",0.6,"Font_think","end");
}

if obj_payer.faza[4]==0
{
scr_text("Привет…",noone,noone,"Mike","???","Adam");
scr_text("Привет, меня зовут Майк.",noone,_mike,"Mike",noone,"Adam");
scr_text("А это Аня.",noone,_mike,"Mike",noone,"Adam");
scr_text("Я и сама могла представиться.",noone,_anya,"Anya",noone,"Adam");
scr_text("...",noone,noone,"Anya","???","Adam");
scr_text("А тебя как?",noone,_mike,"Mike",noone,"Adam");
scr_text("Адам.",noone,noone,"Mike",_adam,"Adam");
scr_text("Хм... необычное имя.",noone,_mike,"Mike",noone,"Adam");
scr_text("А мы с тобой знакомы...",noone,noone,"Mike",_adam,"Adam");
scr_text("?",noone,_mike,"Mike",noone,"Adam");
scr_text("Да вроде нет...",noone,_mike,"Mike",noone,"Adam");
scr_text("Я не помню, чтоб я видел человека, похожего на тебя.",noone,_mike,"Mike",noone,"Adam");
scr_text("... ясно.",noone,noone,"Mike",_adam,"Adam");
scr_text("...",noone,noone,"Mike",_adam,"Adam");
scr_text("(Какой же он не общительный.)",noone, _mike,"Mike",noone,"Adam",0.6,"Font_think");
scr_text("Тебе что то от меня нужно?",noone,noone,"Mike",_adam,"Adam");
scr_text("...нет",noone,_mike,"Mike",noone,"Adam");
scr_text("Я просто хотел узнать как тебя зовут, там пообщаться немного.",noone,_mike,"Mike",noone,"Adam");
scr_text("... ладно.",noone,noone,"Mike",_adam,"Adam",0.6,"Font_main","end");
obj_payer.faza[4]=1
}


break;

case "home_door_anna_0.1":
scr_text("Эй, зачем ты пытаешся попасть ко мне в комнату?",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
break
case "home_door_make_0.1":
scr_text("Не думаю, что мне нужно возвращаться в свою комнату...",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
break

case "anna_school_1":
scr_text("Ну как, ты готов?",noone,noone,"Mike",_anya,"Anya");
scr_option("Нет","anna_school_1.1","No");
if (obj_payer.faza[1]==1 and obj_payer.faza[2]==1 and obj_payer.faza[3]==1 and obj_payer.faza[4]==1)
{
scr_option("Да","anna_school_1.2","Yes");
}
break;

case "anna_school_1.1":
scr_text("Вроде ещё нет.",noone,_mike,"Mike",noone,"Anya");
scr_text("Ну тогда давай закончим говорить со всеми.",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
break;

case "anna_school_1.2":
scr_text("Наверное да.",noone,_mike,"Mike",noone,"Anya");
scr_text("Хорошо... Тогда я могу пообщаться с тобой, пока есть время.",noone,noone,"Mike",_anya,"Anya");
scr_text("А кстати, можешь сказать...",noone,noone,"Mike",_anya,"Anya");
scr_text("Что тебе снились ночью?",noone,noone,"Mike",_anya,"Anya");
scr_text("?",noone,_mike,"Mike",noone,"Anya");
scr_option("*Соврать*","anna_school_1.3","*Lie*");
scr_option("*Сказать правду*","anna_school_1.4","*Tell the truth*");
break;

case "anna_school_1.3":
scr_text("А мне... это...",noone,_mike,"Mike",noone,"Anya");
scr_text("Да так... ничего не приснилось...",noone,_mike,"Mike",noone,"Anya");
scr_text("Ты говоришь правду?",noone,noone,"Mike",_anya,"Anya");
scr_text("А то весь мой опыт, как дочери профессионального детектива говорит мне об обратном...",noone,noone,"Mike",_anya,"Anya");
scr_text("... ну...",noone,_mike,"Mike",noone,"Anya");
scr_text("Тогда давай я в начале скажу, что приснилось мне.",noone,noone,"Mike",_anya,"Anya");
scr_text("Существо, с синей кожей и маской на лице.",noone,noone,"Mike",_anya,"Anya");
scr_text("Он был одет в чёрный фрак поверх белой рубашки, на его шее висел галстук.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Он назвал себя ''Безликим''.",noone,noone,"Mike",_anya,"Anya");
scr_text("Возможно, именно поэтому он носит маску.",noone,noone,"Mike",_anya,"Anya");
scr_text("Но... мне тоже приснился Безликий...",noone,_mike,"Mike",noone,"Anya");
scr_text("Я думал, что это звучало бы слишком странно...",noone,_mike,"Mike",noone,"Anya");
scr_text("Хм... правда?",noone,noone,"Mike",_anya,"Anya");
scr_text("Интересно...",noone,noone,"Mike",_anya,"Anya");
scr_text("Он сказал мне, что той ночью он также появился во снах других людей, некоторых из которых я знаю.",noone,noone,"Mike",_anya,"Anya");
scr_text("По началу я считала это обычным причудливым сном.",noone,noone,"Mike",_anya,"Anya");
scr_text("Но если и тебе он тоже приснился...",noone,noone,"Mike",_anya,"Anya");
scr_No_option("anna_school_1.5");
break;

case "anna_school_1.4":
scr_text("Ну...",noone,_mike,"Mike",noone,"Anya");
scr_text("Мне приснился человек… с синей кожей, и белой маской...",noone,_mike,"Mike",noone,"Anya");
scr_text("Он был одет так... стильно?",noone,_mike,"Mike",noone,"Anya");
scr_text("Он говорил, что скоро что-то может там произойти...",noone,_mike,"Mike",noone,"Anya");
scr_text("В общем, ничего интересного...",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Хм...",noone,noone,"Mike",_anya,"Anya");
scr_text("То есть он и тебе приснился?",noone,noone,"Mike",_anya,"Anya");
scr_text("Что?",noone,_mike,"Mike",noone,"Anya");
scr_text("Сегодня ночью мне тоже приснилось это существо.",noone,noone,"Mike",_anya,"Anya");
scr_text("Он назвал себя ''Безликим''...",noone,noone,"Mike",_anya,"Anya");
scr_text("Возможно, именно поэтому он носит маску.",noone,noone,"Mike",_anya,"Anya");
scr_text("Он сказал мне, что той ночью он также появился во снах других людей, некоторых из которых я знаю.",noone,noone,"Mike",_anya,"Anya");
scr_text("По началу я считала это обычным причудливым сном.",noone,noone,"Mike",_anya,"Anya");
scr_text("Но когда ты так подробно его пересказал...",noone,noone,"Mike",_anya,"Anya");
scr_No_option("anna_school_1.5");
break;

case "anna_school_1.5":
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Как это возможно?",noone,noone,"Mike",_anya,"Anya");
scr_text("И, что не менее важно, зачем Безликий делает это?",noone,noone,"Mike",_anya,"Anya");
scr_text("Он сказал мне, что ищет людей, что могут помочь ему...",noone,_mike,"Mike",noone,"Anya");
scr_text("Но в чём именно помочь он объяснить не смог.",noone,_mike,"Mike",noone,"Anya");
scr_text("Он только упомянул, что это связано с моим переездом сюда.",noone,_mike,"Mike",noone,"Anya");
scr_text("Тем, что ты назвала ''[c_yellow]настоящей причиной[c_white]''.",noone,_mike,"Mike",noone,"Anya");
scr_text("То есть и с этими преступлениями тоже...",noone,noone,"Mike",_anya,"Anya");
scr_text("О чём ты?",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("неважно.",noone,noone,"Mike",_anya,"Anya");
scr_text("В общем, нам остаётся только ждать, пока он приснится снова.",noone,noone,"Mike",_anya,"Anya");
scr_text("И... тогда он скажет нам правду?",noone,_mike,"Mike",noone,"Anya");
scr_text("Не знаю. С чего мы вообще можем ему доверять?",noone,noone,"Mike",_anya,"Anya");
scr_text("А? О чём ты?",noone,_mike,"Mike",noone,"Anya");
scr_text("Мы не знаем кто он, зачем он пришёл к нам...",noone,noone,"Mike",_anya,"Anya");
scr_text("Мы даже не знаем, что у него на уме.",noone,noone,"Mike",_anya,"Anya");
scr_text("А если он злой?",noone,noone,"Mike",_anya,"Anya");
scr_text("То... мы можем отказаться от помощи ему...",noone,_mike,"Mike",noone,"Anya");
scr_text("Хех, ну учти: ''Контракт с дьяволом расторгнуть не просто''.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("хм...",noone,_mike,"Mike",noone,"Anya");

scr_No_option("anna_school_1.end");
break;

case "anna_school_1.end":
scr_black(black_no,-1);
obj_time.time_change=1;
scr_text("На этом наш диалог подошёл к концу.",noone,_mike,"Mike");
scr_text("...",noone,_mike,"Mike");
scr_text(" ...",noone,_mike,"Mike");
scr_text("  ...",noone,_mike,"Mike");
scr_text("(И вот, первый день учёбы закончился.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Сегодня он был действительно коротким.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Хм... Женя и Настя ждут встречи со мной.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");

scr_No_option("anna_school_1.end1");
break;

case "anna_school_1.end1":
obj_payer.faza[0]=3;
scr_text("(Но времени у меня не так много…)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(С кем я проведу свободное время?...)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Или мне сразу пойти домой?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("_school_1.end");
break;

case "_school_1.end":
scr_black(black_no,1);
scr_No_text();
break;

case "zhenya_2":
obj_payer.faza[9]=73;
obj_payer.faza[10]="zhenya_down";
obj_payer.faza[11]=1;
scr_text("О, привет.",noone,noone,"Mike",_zhenya);
scr_text("Сейчас класс пустует, так что это неплохое место чтобы поговорить.",noone,noone,"Mike",_zhenya);
scr_text("Ну, если у тебя есть время на меня…",noone,noone,"Mike",_zhenya);
scr_text("(Стоит ли мне провести время с Женей?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","zhenya_2.no","No");
scr_option("Да","zhenya_2.yes","Yes");
break

case "zhenya_2.no":
scr_text("Извини, я ещё занят.",noone,_mike,"Mike");
scr_text("Ясно…",noone,noone,"Mike",_zhenya);
scr_text(":(",noone,noone,"Mike",_zhenya,noone,0.6,"Font_main","end");
break

case "zhenya_2.yes":
scr_text("Хорошо. Ну давай поговорим.",noone,_mike,"Mike");
scr_text("Восхитительно! Ну... о чём именно мне говорить с тобой?",noone,noone,"Mike",_zhenya);
scr_text("Хм... можешь рассказать о себе... Как ты обычно общаешься с другими людьми.",noone,_mike,"Mike");
scr_text("...Ну в этом главная проблема...",noone,noone,"Mike",_zhenya);
scr_text("Обычно я не общаюсь с другими.",noone,noone,"Mike",_zhenya);
scr_text("Большую часть своего времени я провожу дома.",noone,noone,"Mike",_zhenya);
scr_text("Этот год вообще первый, когда я не учусь дистанционно.",noone,noone,"Mike",_zhenya);
scr_text("Почему?",noone,_mike,"Mike");
scr_text("Просто мне не хотелось покидать рабочее место... Ну и людей в школе как-то слишком много...",noone,noone,"Mike",_zhenya);
scr_text("Но тобой было приятно решение изменить это?",noone,_mike,"Mike");
scr_text("Да... Ну я понимаю, что по жизни мне часто придётся общаться с людьми...",noone,noone,"Mike",_zhenya);
scr_text("И ты не хочешь выглядеть глупо перед другими?",noone,_mike,"Mike");
scr_text("Нет. Мне плевать, что обо мне скажут окружающие.",noone,noone,"Mike",_zhenya);
scr_text("Будь то ''Ты вроде и парень, а красишь свои волосы как девчонка…'' или ''Вроде ты и девушка, а ведёшь себя неподобающе...''",noone,noone,"Mike",_zhenya);
scr_text("Ну ты прикинь, они даже мой пол точно назвать не могут...",noone,noone,"Mike",_zhenya);
scr_text("(Интересно, а кто из них именно ошибся?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Не думаю, что сейчас подходящий момент чтоб задать подобный вопрос)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Умение внятно общаться мне нужно совсем для другого.",noone,noone,"Mike",_zhenya);
scr_text("Просто я понимаю, что в нынешнем веке тяжело жить, не используя все свои навыки коммуникации.",noone,noone,"Mike",_zhenya);
scr_text("..?",noone,_mike,"Mike");
scr_text("Ну, про это я и говорю.",noone,noone,"Mike",_zhenya);
scr_text("Мои мысли не каждый может понять...",noone,noone,"Mike",_zhenya);
scr_text("Это значительно усложняет даже простую беседу...",noone,noone,"Mike",_zhenya);
scr_text("Я вроде бы понял тебя...",noone,_mike,"Mike")
scr_text("Ну... Уже не так плохо.",noone,noone,"Mike",_zhenya);
scr_text("Хотя на рисунках эмоции передавать намного легче...",noone,noone,"Mike",_zhenya);
scr_text("Как говорится: ''Искусство - диалог, в котором собеседник молчит''...",noone,noone,"Mike",_zhenya);
scr_text("И я тоже молчу, ''говорит моя рука''.",noone,noone,"Mike",_zhenya);
scr_text("Первая фраза прозвучала лучше...",noone,_mike,"Mike")
scr_text("Ну... она попалась мне в какой-то книжке… а вторая сама ко мне пришла.",noone,noone,"Mike",_zhenya);
scr_text("Наверное, поэтому первая звучит лучше, чем вторая.",noone,noone,"Mike",_zhenya);
scr_text("Хех...",noone,noone,"Mike",_zhenya);
scr_text("...хм...",noone,_mike,"Mike")
scr_text("А ты действительно профи в искусстве?",noone,_mike,"Mike")
scr_text("Ну да...",noone,noone,"Mike",_zhenya);
scr_text("Я просто очень часто делаю всякие зарисовки.",noone,noone,"Mike",_zhenya);
scr_text("Ну а потом они дорабатываются...",noone,noone,"Mike",_zhenya);
scr_text("И вот у меня уже есть своя фан-база, что ждёт моих новых работ.",noone,noone,"Mike",_zhenya);
scr_text("Количество породило качество… так сказать.",noone,noone,"Mike",_zhenya);
scr_text("Прям фан-база?",noone,_mike,"Mike")
scr_text("Ну да.",noone,noone,"Mike",_zhenya);
scr_text("Но популярность меня не очень интересует.",noone,noone,"Mike",_zhenya);
scr_text("Она лишь даст мне больше людей, что буду критиковать мою внешность, моё поведение, или даже мои мысли и идеи.",noone,noone,"Mike",_zhenya);
scr_text("Единственное, это даст мне деньги на самостоятельную жизнь...",noone,noone,"Mike",_zhenya);
scr_text("Ну а пока что мне помогают родители.",noone,noone,"Mike",_zhenya)
scr_text("Хм... интересно.",noone,_mike,"Mike")
scr_text("Знаешь, сейчас мне стало явно проще общаться с тобой...",noone,noone,"Mike",_zhenya);
scr_text("Как будто слова сами начали произноситься, без моей помощи.",noone,noone,"Mike",_zhenya);
scr_text("Ну, давай потом ещё раз пообщаемся так же.",noone,noone,"Mike",_zhenya);
scr_text("Ты... такой приятный...",noone,noone,"Mike",_zhenya);
scr_text("Д- для общения!... Только для общения!",noone,noone,"Mike",_zhenya);
scr_text("Чтобы ты не подумал, не думай!",noone,noone,"Mike",_zhenya,noone,10);
scr_text("В смысле не об этом думай...",noone,noone,"Mike",_zhenya,noone,1.4);
scr_text("Да я понял...",noone,_mike,"Mike",noone,noone,0.6);
scr_text("… ну да…",noone,noone,"Mike",_zhenya);
scr_text("Становится поздно… Думаю, что мне уже пора идти домой.",noone,noone,"Mike",_zhenya);
scr_text("Ладно. Тогда пока.",noone,_mike,"Mike");
scr_No_option("zhenya_2.yes1");
break

case "zhenya_2.yes1":
scr_black(black_no,-2);
obj_payer.faza[9]=900;
obj_payer.faza[10]="zhenya_down";
obj_payer.faza[11]=1;
scr_text("До свидания.",noone,noone,"Mike",_zhenya);
scr_text("(Женя уходит домой.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Думаю, я действительно хорошо провёл время с-)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(С ним?... С ней?...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Надо будет как-то уточнить этот момент.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(А пока я тоже пойду домой.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone,noone,noone);
scr_No_option("zhenya_2.yes_end");
break

case "zhenya_2.yes_end":
obj_time.time_change=2;
room_goto(room_home)
obj_payer.faza[9]=145;
obj_payer.faza[10]="masha_down";
obj_payer.faza[11]=1;
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
obj_payer.x=180;
obj_payer.y=300;
scr_black(black_no,1);
scr_text("Я дома.",noone,_mike,"Mike");
scr_text("Снова привет.",noone,noone,"Mike",_anya,"Anya");
scr_text("А что ты так долго?",noone,noone,"Mike",_masha,"Masha")
scr_text("Я надеялась поиграть с тобой...",noone,noone,"Mike",_masha,"Masha")
scr_text("Но, видимо, у меня уже не хватает времени...",noone,noone,"Mike",_masha,"Masha")
scr_No_option("day2_evening");
break



case "nastya_1.2":
scr_text("Привет, Майк.",noone,noone,"Mike",_nastya);
scr_text("Хочешь поговорить?",noone,noone,"Mike",_nastya);
scr_text("У меня есть несколько историй для тебя…",noone,noone,"Mike",_nastya);
scr_text("(Стоит ли мне провести время с Настей?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","nastya_1.2.no","No");
scr_option("Да","nastya_1.2.yes","Yes");
break

case "nastya_1.2.no":
scr_text("Извини, я ещё занят.",noone,_mike,"Mike");
scr_text("Жаль.",noone,noone,"Mike",_nastya);
scr_text("Но, если найдётся минутка, то ты приходи.",noone,noone,"Mike",_nastya,noone,0.6,"Font_main","end");
break

case "nastya_1.2.yes":
scr_text("Да. Если хочешь, я могу провести время с тобой.",noone,_mike,"Mike");
scr_text("Круть! Давай поговорим тут? Не хочу никуда ходить.",noone,noone,"Mike",_nastya);
scr_text("Ладно.",noone,_mike,"Mike");
scr_text("В общем, как я и говорила, я люблю выступать на сцене.",noone,noone,"Mike",_nastya);
scr_text("И не просто появится на сцене любительского шоу...",noone,noone,"Mike",_nastya);
scr_text("А брать главную роль в самом большом театре в городе!",noone,noone,"Mike",_nastya);
scr_text("...",noone,_mike,"Mike");
scr_text("? Ты не удивлён?",noone,noone,"Mike",_nastya);
scr_text("...*молчаливый шок*...",noone,_mike,"Mike");
scr_text("...ого...",noone,_mike,"Mike");
scr_text("И ты играла там главную роль?",noone,_mike,"Mike");
scr_text("Ну... не совсем главную...",noone,noone,"Mike",_nastya);
scr_text("А какую?",noone,_mike,"Mike");
scr_text("Просто для выступления нужна была маленькая девочка.",noone,noone,"Mike",_nastya);
scr_text("А мне тогда было лет десять...",noone,noone,"Mike",_nastya);
scr_text("Хоть действия для меня было не так много, но роль моя была очень важна для сюжета...",noone,noone,"Mike",_nastya);
scr_text("И когда я вышла на сцену...",noone,noone,"Mike",_nastya);
scr_text("Я видела это...",noone,noone,"Mike",_nastya);
scr_text("Весь зал смотрел на меня.",noone,noone,"Mike",_nastya);
scr_text("Некоторые бы начали волноваться от этого, но мне это лишь прибавило уверенности.",noone,noone,"Mike",_nastya);
scr_text("Что я важна для них, и я сделаю всё, чтобы им понравилось!",noone,noone,"Mike",_nastya);
scr_text("После того выступления... я по-настоящему полюбила это.",noone,noone,"Mike",_nastya);
scr_text("Жаль, что подобных ролей для меня больше не было...",noone,noone,"Mike",_nastya);
scr_text("Но зато, именно это и даёт мне мотивацию...",noone,noone,"Mike",_nastya);
scr_text("Мотив стать лучше.",noone,noone,"Mike",_nastya);
scr_text("Надеюсь у тебя получится.",noone,_mike,"Mike");
scr_text("Я тоже.",noone,noone,"Mike",_nastya);
scr_text("Хотя я в этом сомневаюсь.",noone,noone,"Mike",_nastya);
scr_text("Ведь сколько бы я не старалась...",noone,noone,"Mike",_nastya);
scr_text("Пока что всё тщетно.",noone,noone,"Mike",_nastya);
scr_text("Хех...",noone,noone,"Mike",_nastya);
scr_text("...",noone,noone,"Mike",_nastya);
scr_text("Надеюсь, что у меня получится...",noone,noone,"Mike",_nastya);
scr_text("Когда-нибудь.",noone,noone,"Mike",_nastya);
scr_text("Если достаточно стараться, то у тебя всё получится. Я уверен в этом.",noone,_mike,"Mike");
scr_text("Хотя я ещё ни разу не видел твоей актерской игры...",noone,_mike,"Mike");
scr_text("Хехе...",noone,noone,"Mike",_nastya);
scr_text("Я обязательно покажу тебе это.",noone,noone,"Mike",_nastya);
scr_text("Но... сейчас похоже уже вечереет...",noone,noone,"Mike",_nastya);
scr_text("Думаю, мне стоит поспешить домой.",noone,noone,"Mike",_nastya);
scr_text("А то родители будут... волноваться.",noone,noone,"Mike",_nastya);
scr_text("хех...",noone,noone,"Mike",_nastya);
scr_text("...",noone,noone,"Mike",_nastya);
scr_text("Да, думаю, мне тоже.",noone,_mike,"Mike");
scr_text("Знаешь, мне было приятно рассказать о себе...",noone,noone,"Mike",_nastya);
scr_text("Надеюсь, потом ты расскажешь мне о себе!",noone,noone,"Mike",_nastya);
scr_text("*подмиг*",noone,noone,"Mike",_nastya);
scr_text("Пока, Майк.",noone,noone,"Mike",_nastya);
scr_text("Пока.",noone,_mike,"Mike");
scr_text("...",noone,_mike,"Mike");
scr_No_option("nastya_1.2.yes1");
break

case "nastya_1.2.yes1":

scr_black(black_no,-2)
obj_payer.fake_right=1;
scr_text("(Она действительно приятный человек...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone);
scr_No_option("nastya_1.2.end");
break

case "nastya_1.2.end":
obj_time.time_change=2;
obj_payer.fake_right=0;
room_goto(room_home)
obj_payer.faza[9]=145;
obj_payer.faza[10]="masha_down";
obj_payer.faza[11]=1;
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
obj_payer.x=180;
obj_payer.y=300;
scr_black(black_no,1)
scr_text("Я дома.",noone,_mike,"Mike");
scr_text("Снова привет.",noone,noone,"Mike",_anya,"Anya");
scr_text("А что ты так долго?",noone,noone,"Mike",_masha,"Masha")
scr_text("Я надеялась поиграть с тобой...",noone,noone,"Mike",_masha,"Masha")
scr_text("Но, видимо, у меня уже не хватает времени...",noone,noone,"Mike",_masha,"Masha")
scr_No_option("day2_evening");
break

case "home_masha0":
scr_text("(Дома меня ждёт Маша...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Стоит ли мне идти домой сейчас?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","talk_end","No");
scr_option("Да","home_masha0_yes","Yes");
break

case "home_masha0_yes":
scr_black(black_no,-2);
scr_text("(Ладно... тогда я пойду домой.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
obj_payer.faza[0]=3.1;
scr_No_option("home_masha0_yes.1");
break

case "home_masha0_yes.1":
room_goto(room_home);
obj_payer.faza[9]=145;
obj_payer.faza[10]="masha_down";
obj_payer.faza[11]=1;
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
obj_payer.x=180;
obj_payer.y=300;
scr_black(black_no,1);
scr_text("Я дома.",noone,_mike,"Mike",noone,noone);
scr_text("Ура! Привет, Майк.",noone,noone,"Mike",_masha,"Masha");
scr_text("А... а где Аня?",noone,noone,"Mike",_masha,"Masha");
scr_text("Не знаю. Наверное, гуляет где-то.",noone,_mike,"Mike",noone,"Masha");
scr_text("Ясно...",noone,noone,"Mike",_masha,"Masha");
scr_text("А пока она не пришла... давай поиграем?",noone,noone,"Mike",_masha,"Masha");
scr_text("Во что?",noone,_mike,"Mike",noone,"Masha");
scr_text("А во что ты хочешь?",noone,noone,"Mike",_masha,"Masha");
scr_text("Хм... давай в настольные игры?",noone,_mike,"Mike",noone,"Masha");
scr_text("Они скучные...",noone,noone,"Mike",_masha,"Masha");
scr_text("А тогда что ты хочешь?",noone,_mike,"Mike",noone,"Masha");
scr_text("Хоть что-нибудь. Пока мой садик закрыт на ремонт мне весь день приходится сидеть дома.",noone,noone,"Mike",_masha,"Masha");
scr_text("И это ТАК скучно-о-о-о...",noone,noone,"Mike",_masha,"Masha");
scr_text("Хм... Может, я почитаю тебе книжку?",noone,_mike,"Mike",noone,"Masha");
scr_text("Ну давай. Мама тоже часто читала книжки мне по вечерам.",noone,noone,"Mike",_masha,"Masha");

scr_No_option("home_masha0_yes.2");
break

case "home_masha0_yes.2":
scr_black(black_no,-1);
scr_sound_sette(0,Sng_Colorful_Flowers,true,2);
scr_text("Хорошо. Пойду найду что-нибудь.",noone,_mike,"Mike",noone,"Masha");
scr_text("(После небольшого поиска я вернулся с книжкой сказок в руках)",noone,_mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("Какую ты хочешь?",noone,_mike,"Mike",noone,"Masha");
scr_text("Давай вот эту. Я её раньше не слышала.",noone,noone,"Mike",_masha,"Masha");
scr_text("Хорошо...",noone,_mike,"Mike",noone,"Masha",0.6,"Font_main");
scr_No_option("home_masha0_yes.3");
break

case "home_masha0_yes.3":
obj_payer.phy_position_x=265
obj_payer.phy_position_y=140
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgd_s;
	break;
	case "school_1":
	sprite_index=spgd_s_1;
	break;
	}
scr_text("В одном королевстве правили Добрая королева, и Справедливый король.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("С самой первой их встречи они поняли, что рождены друг для друга.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("И знали они, что ничто не сможет разлучить их.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Время шло, пока король с королевой были вместе.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("И в один день, самый обычный на первый взгляд...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Королева сказала: ''Скоро у нас будет ребёнок''.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Но... вскоре после этого началась война.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Правитель соседнего королевства начал грабить чужие земли, убивать невинных людей...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Справедливый король не мог стоять в стороне, ему пришлось уйти на войну.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("С собой он взял отряд самых преданных своих друзей.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Добрая королева осталась одна.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она верила, что её муж вернётся домой...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она верила, пока ей не принесли донесение: ''Справедливый король победил зло... посмертно''.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Королева так долго плакала, не веря этому...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Но время шло, и у королевы родилась дочь.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она была так похожа на свою маму, что её назвали подобно ей: ''Искренняя принцесса''.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Принцесса сразу узнала от матери о доброте, помощи. Она смогла принять весь её свет.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Принцесса стала новым солнцем королевства.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она всегда желала помочь нуждающимся, даже если на первый взгляд это было невозможно.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она всегда была готова помочь своей маме, и в ответ получала столько любви и заботы, сколько только возможно.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Королева всегда была готова прочитать своей дочке сказку на ночь. Спеть ей колыбельную. Сказать, как сильно она её любит.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она всегда говорила, что будет любить её до самого конца...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("И принцесса наслаждалась такой жизнью.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("В один прекрасный день она узнала, что принц из дальних краёв скоро придет к ней.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Он был её дальним родственником, и она с нетерпением ждала встречи с ним...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Но в день его приезда, королеве стало плохо.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Она уснула, но не хотела просыпаться.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Одна из учёных замка узнала, что злой волшебник наложил чары на королеву.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Теперь она будет спать, до самого конца...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Никто не хотел говорить об этом принцессе, но принц, что приехал к ней случайно рассказал ей правду.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Но он пообещал, что сделает всё возможное, дабы помочь королеве проснуться.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Он знал одного старого мага, что был готов помочь сломать чары злого волшебника.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Старый маг дал часть своих сил принцу, дабы тот мог сразиться со злым волшебником.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Принц нашёл злого волшебника, и сделал всё возможное, дабы победить его...",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("После долгой битвы принц одержал победу.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Королева проснулась, и наградила принца званием ''Рыцаря'' за её спасение.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("Принц продолжил жить с принцессой и королевой, оберегая их от любых угроз.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_text("И вместе они жили счастливо.",noone,noone,"Mike",noone,"Masha",0.6,"Font_fancy");
scr_No_option("home_masha0_yes.4");
break

case "home_masha0_yes.4":
scr_black(black_no,1);
scr_text("...",noone,_mike,"Mike",noone,"Masha",0.6,"Font_main");
scr_text("Интересная такая сказка.",noone,_mike,"Mike",noone,"Masha");
scr_text("Мне так понравилось, что у принцессы в конце всё стало хорошо.",noone,noone,"Mike",_masha,"Masha");
scr_text("Так и представляю: девочка, в длинном зелёном платье, в окружении своей мамы, и её рыцаря в синих доспехах…",noone,noone,"Mike",_masha,"Masha");
scr_text("Когда мама вернётся, попрошу, чтоб она тоже прочитала мне эту сказку!",noone,noone,"Mike",_masha,"Masha");
scr_text("То есть тебе понравилось?",noone,_mike,"Mike",noone,"Masha");
scr_text("Да. Особенно принцесса.",noone,noone,"Mike",_masha,"Masha");
scr_text("Она прямо как я.",noone,noone,"Mike",_masha,"Masha");
scr_text("...",noone,noone,"Mike",_masha,"Masha");
scr_text("Мне даже немного её жаль...",noone,noone,"Mike",_masha,"Masha");
scr_text("Почему?",noone,_mike,"Mike",noone,"Masha");
scr_text("Она потеряла отца... ещё до своего рождения.",noone,noone,"Mike",_masha,"Masha");
scr_No_option("home_masha0_yes.5");
break

case "home_masha0_yes.5":
//scr_sound_sette(1,Snd_Wind,true,2)

obj_time.time_change=2;
scr_text("(После этих слов я не смог ничего ответить.)",noone,_mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("(Лишь позволил ей прилечь на моё плечо.)",noone,_mike,"Mike",noone,"Masha",0.6,"Font_think");
scr_text("Майк... спасибо, что ты есть.",noone,noone,"Mike",_masha,"Masha");
scr_text("Потом... давай ты прочитаешь мне ещё сказку?",noone,noone,"Mike",_masha,"Masha");
scr_text("Столько сказок, сколько ты захочешь.",noone,_mike,"Mike",noone,"Masha");
scr_text("Спасибо.",noone,noone,"Mike",_masha,"Masha");
scr_text("Спасибо...",noone,noone,"Mike",_masha,"Masha");
scr_text("спасибо...",noone,noone,"Mike",_masha,"Masha");
scr_text("А ты не знаешь, когда мама вернётся?",noone,noone,"Mike",_masha,"Masha");
scr_text("Нет. Мне про это ничего не говорили.",noone,_mike,"Mike",noone,"Masha");
scr_text("Интересно, у неё всё хорошо?",noone,noone,"Mike",_masha,"Masha");
scr_text("Почему она не звонит нам?",noone,noone,"Mike",_masha,"Masha");
scr_text("Наверное, она скучает по мне...",noone,noone,"Mike",_masha,"Masha");
scr_text("...",noone,noone,"Mike",_masha,"Masha");
scr_text("Я в этом уверен.",noone,_mike,"Mike",noone,"Masha");
scr_text("Возможно, она сейчас просто сильно занята... чем-нибудь.",noone,_mike,"Mike",noone,"Masha");
scr_text("Не волнуйся, всё будет хорошо.",noone,_mike,"Mike",noone,"Masha");
scr_text("... уже так поздно.",noone,noone,"Mike",_masha,"Masha");
scr_text("Обычно, примерно сейчас мама отправляла меня спать...",noone,noone,"Mike",_masha,"Masha");
scr_text("*Зевок*",noone,noone,"Mike",_masha,"Masha");
obj_payer.faza[0]=3.2;
scr_No_option("home_masha0_yes.7");
break

case "home_masha0_yes.7":
scr_sound_sette(1,Sng_Colorful_Flowers,true,0.5);
obj_payer.faza[9]=240;
obj_payer.faza[10]="anna_up";
obj_payer.faza[11]=1.5;
scr_text("Привет. Я дома.",noone, _anya,"Anya",noone,"Masha");
scr_text("А почему Маша ещё не готовится ко сну?",noone, _anya,"Anya",noone,"Masha");
scr_text("Я как раз собиралась.",noone,noone,"Anya",_masha,"Masha");
scr_No_option("day2_evening");
break

case "day2_evening":
scr_black(black_no,-1)
obj_payer.faza[0]=3.3;
obj_payer.faza[9]=-64;
obj_payer.faza[10]="masha_left";
obj_payer.faza[11]=3;
scr_text("(После этих слов Маша поднялась вверх по лестнице.)",noone, _mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Хм.",noone,noone,"Mike",_anya,"Anya");
scr_No_option("day2_evening0");
break

case "day2_evening0":
obj_payer.faza[0]=3.33;
scr_black(black_no,1)
scr_text("... Майк.",noone,noone,"Mike",_anya,"Anya");
scr_text("Как ты считаешь... этот сон...",noone,noone,"Mike",_anya,"Anya");
scr_text("Это действительно не просто сон?",noone,noone,"Mike",_anya,"Anya");
scr_text("А?",noone,_mike,"Mike",noone,"Anya");
scr_text("Хм...",noone,_mike,"Mike",noone,"Anya");
scr_text("Наверное, единственный способ проверить это - ждать, пока этот сон приснится снова.",noone,_mike,"Mike",noone,"Anya");
scr_text("Пожалуй ты прав.",noone,noone,"Mike",_anya,"Anya");
scr_text("Просто это в голове не укладывается...",noone,noone,"Mike",_anya,"Anya");
scr_text("Безликий сказал мне, что он создаёт все сны для всех людей...",noone,noone,"Mike",_anya,"Anya");
scr_text("Значит, он - это некий бог?",noone,noone,"Mike",_anya,"Anya");
scr_text("Это так сложно понять... и принять.",noone,noone,"Mike",_anya,"Anya");
scr_text("*вздох*",noone,_mike,"Mike",noone,"Anya");
scr_text("Тогда в школе, ты упомянула какие-то преступления...",noone,_mike,"Mike",noone,"Anya");
scr_text("О чём ты говорила?",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Давай, я расскажу тебе это в том ''мире снов''?",noone,noone,"Mike",_anya,"Anya");
scr_text("Если он всё-таки приснится снова.",noone,noone,"Mike",_anya,"Anya");
scr_text("А если нет?",noone,_mike,"Mike",noone,"Anya");
scr_text("То ответа ты не услышишь.",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day2_evening1");
break

case "day2_evening1":
obj_payer.faza[0]=3.3;
scr_text("(Сказав это Аня пошла к лестнице.)",noone, _mike,"Mike",noone,"Anya",0.6,"Font_think");
obj_payer.faza[9]=143;
obj_payer.faza[10]="anna_up";
obj_payer.faza[11]=1.5;
scr_text("Эй, и куда ты пошла?",noone,_mike,"Mike",noone,"Anya");
scr_text("Спать.",noone,noone,"Mike",_anya,"Anya");
scr_text("И тебе советую тоже.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Спокойной ночи.",noone,noone,"Mike",_anya,"Anya");
scr_No_option("day2_evening2");
break

case "day2_evening2":
obj_payer.faza[9]=-640;
obj_payer.faza[10]="anna_left";
obj_payer.faza[11]=2;
scr_black(black_no,-1.5);
scr_text("Тебе тоже...",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day2_evening3");
break

case "day2_evening3":
scr_black(black_black,0);
room_goto(room_room);
scr_text("(Видимо, у меня нет выбора, кроме как пойти спать.)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day2_evening4");
break

case "day2_evening4":
obj_payer.cloth="deff"
scr_black(black_no,1);
obj_payer.sprite_index=spgu_
obj_payer.phy_position_x=303;
obj_payer.phy_position_y=265;
global.main_quests[2].activation=2
scr_No_text();
break;

case "After school door":
scr_text("Дверь в наружу...",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
break;

case "After school skaf":
scr_text("Это мой шкаф.",noone, _mike,"Mike",noone,noone,0.6,"Font_main","end");

break;

case "After school bed":
scr_text("Стоит ли мне ложится в кровать прямо сейчас?",noone,_mike,"Mike");
scr_option("Нет","talk_end","No");
scr_option("Да","After school bed_","Yes");
break;

case "After school bed_":
scr_black(black_no,-1);
scr_sound_sette(0,Sng_Colorful_Flowers,true,1);
obj_time.time_change=3;
scr_text("(Я поставил будильник на завтра и лёг в кровать)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Это... ведь правда возможно?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Чтобы этот сон приснился снова?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(И чтобы он оказался правдой?)",noone, _mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone, _mike,"Mike");
scr_text("*вздох*",noone, _mike,"Mike");
scr_text("И как мне уснуть с такими мыслями?",noone, _mike,"Mike");
scr_No_option("day2_faceless_");
break

case "day2_faceless_":
room_goto(room_faceles);
scr_text("...",noone, _mike,"Mike");
scr_No_option("day2_faceless0");
break

case "day2_faceless0":
obj_payer.phy_position_x=1045;
obj_payer.phy_position_y=600;
scr_text(". . .",noone, _mike,"Mike");
scr_No_option("day2_faceless");
break

case "day2_faceless":

obj_payer.sprite_index=spgu_
scr_black(black_no,1);
scr_sound_sette(1,Sng_Timeless,true,1);
scr_text("...",noone,noone,"Mike","???",noone);
scr_text("Вы... Вы пришли.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Это... снова ты?",noone, _mike,"Mike",noone,"Faceless");
scr_text("Хм... на этот раз Вы пришли вместе.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Что?",noone, _mike,"Mike",noone,"Faceless");
obj_payer.faza[9]=660;
obj_payer.faza[10]="anna_right";
obj_payer.faza[11]=80;
scr_No_option("day2_faceless1");
break

case "day2_faceless1":

obj_payer.faza[9]=930;
obj_payer.faza[10]="anna_right";
obj_payer.faza[11]=1;
scr_text("Майк? Это...",noone,noone,"Mike","???",noone);
obj_payer.sprite_index=spgl_
scr_text("...ты?",noone,noone,"Mike",_anya,"Anya");
scr_text("Добро пожаловать в мир снов.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("...Безликий, так?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Да, Анна.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Но- я ведь вам так и не представилась...",noone,_anya,"Anya",noone,"Faceless");
scr_text("Мне не нужно ждать, пока Вы скажете мне Ваше имя, дабы я узнал его.",noone,noone,"Anya",_faceless,"Faceless");
scr_No_option("day2_faceless2");
break

case "day2_faceless2":
obj_payer.faza[0]=3.4;
scr_text("О чём вы говорите?",noone,_mike,"Mike",noone,"Faceless");
scr_text("О том, что я знаю имя каждого, кто посетил меня.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("И Ваше тоже, Майкл.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Зачем... Вы позвали нас ещё раз?",noone,_anya,"Anya",noone,"Faceless");
scr_text("В первый раз я проверял, достойны ли Вы моей просьбы.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("(Те цепи...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(Как я пытался дотянуться до света...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Пройдя мою проверку Вы удостоились моего [c_yellow]Доверия[c_white].",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Доверия?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Доверие такого существа как я позволяет Вам попадать в этот мир.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Но увы, своё Доверие я могу дать только одному человеку за раз.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Но нас же двое...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Действительно.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Благодаря нему Вы можете спокойно попадать сюда, и находится здесь сколько Вам нужно.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А Аня?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Из-за отсутствия у неё моего Доверия она можешь попадать в этот мир только пока Вы находитесь в нём.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Я уже сказал об этом Ане при первой встрече. Извините, что забыл сообщить об этом Вам.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("(Ане нужна моя помощь для нахождения тут?)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Хм...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Я чувствую нечто странное в Вас...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Как будто недавно Вы встретились с чем-то сильным...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Аура зла соприкоснулась с Вашим телом...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Вчера я этого не чувствовал...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("С кем Вы виделись сегодня?",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Ну... только со своими одноклассниками.",noone,_mike,"Mike",noone,"Faceless");
scr_text("Хм... значит, прошу Вас не говорить им, что Вы можете переходить между мирами сна и реали.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Почему?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Видимо, кто-то из них умеет точно так же.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("И использует он свои силы не во благо...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("О чём Вы?",noone,_anya,"Anya",noone,"Faceless");
scr_text("...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Ради этого я и хотел попросить у вас помощи.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Недавно я узнал, что кто-то из людей научился перемещаться между реальностью и этим миром, без каких либо последствий.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Вы же понимаете, чем это плохо?",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Не особо...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Находясь в этом мире, этот человек может заходить во Внутренние миры других людей.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("И делать с ними всё, что он захочет.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Внутренние миры?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Это... Наше сознание?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Вы как всегда правы, Анна.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Но... если кто-то может изменить сознание любого человека...",noone,_anya,"Anya",noone,"Faceless");
scr_text("Он так же спокойно может его разрушить.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Теперь Вы понимаете всю серьёзность происходящего.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Благо, пока что сам этот человек видимо не понимает всех его сил.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("А что он тогда делает?",noone,_mike,"Mike",noone,"Faceless");
scr_text("По какой-то причине он похищает людей в этот мир, и ждёт, пока они не погибнут.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("(Кто-то из моих одноклассников действительно способен на подобное?!)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Похищает? Я не слышала, чтобы люди пропадали...",noone,_anya,"Anya",noone,"Faceless");
scr_text("В этом и дело.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Он похищает сознание этих людей пока они спят.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("От этого после пробуждения эти люди становятся... безэмоциональными, я бы сказал.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("После кого-то времени нахождения их личности вне их тела, они умирают.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Внезапная смерть?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Да, на первый взгляд это именно так и выглядит.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Это те преступления, о котором ты говорила?",noone,_mike,"Mike",noone,"Anya");
scr_text("Ага...",noone,noone,"Mike",_anya,"Anya");
scr_text("Подобное происходило раньше.",noone,noone,"Mike",_anya,"Anya");
scr_text("И Вы снова правы. Почти семь лет назад один человек тоже научился переходить между мирами.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("И... тогда вы тоже звали людей на помощь?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Да...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("*вздох*",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Но... и как прошлый человек справился с этим?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Он собрал себе сильную команду, выяснил, какой человек стоит за всем этим...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("И убил его... ценой своей жизни.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("То есть мы...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Нет. Вы спокойно сможете остаться живыми после этой миссии.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Тот человек... Обстоятельства сложились не в его сторону.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Вам просто нужно будет забрать его силу переходить между мирами.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А что вообще может угрожать нашей жизни?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Видите ли... Для того, чтобы Вы могли полноценно находиться в этом мире, мне пришлось сделать, Ваши здесь чувства сродни реальности.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Иначе бы Ваше восприятие этого мира было бы обрывистым.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Вам бы было практически невозможно запомнить всё, что происходит здесь.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Как обычный сон, отстранённый от реальности.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("И что?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Вследствие этого Вы ощущаете всё здесь происходящее подобно реальности.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("И боль тоже.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Если Вы пострадаете в этом мире слишком сильно...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Несовместимо с жизнью...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("То Вы умрёте.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("[shake]Что[/shake]!?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Хм... То есть, умрёт наше сознание?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Да... Ваше тело никак не пострадает. Ведь это всего лишь сон.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Но боль здесь реальна...",noone,_anya,"Anya",noone,"Faceless");
scr_text("То есть, все теоретические ранения, что мы можем получить здесь, никак не отразится на реальности?...",noone,_mike,"Mike",noone,"Faceless");
scr_text("...пока они не смертельны?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Именно так.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("А для тех, кого тот человек похищает в этот мир, действуют такие же правила?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Именно так.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Хм... умирает личность, а не тело...",noone,_anya,"Anya",noone,"Faceless");
scr_text("А если у человека будет несколько личностей?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Если одна из них погибнет, то вторая, вероятно, полностью возьмёт контроль над телом.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Хм...",noone,_anya,"Anya",noone,"Faceless");
scr_text("Но... почему именно мы?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Разве нету более способных людей?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Не простых детей?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Чем старше человек, тем сложнее ему взаимодействовать с этим миром на вашем уровне.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А Вы являетесь самыми наилучшими кандидатами для данной миссии.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("А чего ты хочешь?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Хочу, чтоб Вы начали помогать мне разобраться с этой ситуацией.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Спасать тех, чьё сознание оказалось в этом мире, в конечном итоге найти ответственного за это, и сказать мне о нём.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("А я уже позабочусь о наказании.",noone,noone,"Anya",_faceless,"Faceless");
scr_No_option("day2_faceless3");
break
case "day2_faceless3":
obj_payer.moment_skip=1;
scr_text("Хм-",noone,_mike,"Mike",noone,"Faceless");
scr_No_option("day2_faceless4");
break
case "day2_faceless4":
obj_payer.moment_skip=0;
scr_text("Мы подумаем.",noone,_anya,"Anya",noone,"Faceless");
scr_text("(Внезапно Аня перебила меня, не дав ответить)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("*шёпот* Не вздумай говорить лишнего!",noone,_anya,"Anya",noone,"Faceless");
scr_text("[wave]Акхем[/wave]. Мы подумаем, и скажем наше решение завтра.",noone,_anya,"Anya",noone,"Faceless");
scr_text("Завтра? Надеюсь, у Вас хватит времени...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("А что такое?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Мне кажется, что завтра произойдёт очередное похищение.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("С чего ты так решил?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Не знаю. Я чувствую беспокойстве в воздухе.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Но, раз Вы настроены на завтра...",noone,noone,"Anya",_faceless,"Faceless");
scr_text("То так тому и быть.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Хорошо.",noone,_anya,"Anya",noone,"Faceless");
scr_text("А...",noone,_mike,"Mike",noone,"Faceless");
scr_text("А как нам выйти?",noone,_mike,"Mike",noone,"Faceless");
scr_No_option("day2_faceless5");
break
case "day2_faceless5":
obj_payer.faza[0]=3.5;
scr_text("Справа дверь.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Специально для Вас сделал.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Хорошо...",noone,_mike,"Mike",noone,"Faceless");
scr_text("(Хотя мне казалось, что её там небыло буквально несколько секунд назад...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think","end");
break;

case "day2_faceless6":
scr_text("(Безликий рисует что-то...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(Это картинка, на которой изображена поляна)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Это один из снов, что я недавно дорисовал.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Вы... рисуете сны?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Да. Я - бог сновидений. И я отвечаю за все сны, что видит человечество.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...то есть теперь отвечаю...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Что ж, Вы собираетесь уходить...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("В таком случае, буду ждать Вас завтра.",noone,noone,"Mike",_faceless,"Faceless",0.6,"Font_main","end");
break;

case "day2_faceless_anna":
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Ты уверена?",noone,_mike,"Mike",noone,"Anya");
scr_text("Про завтра?",noone,_mike,"Mike",noone,"Anya");
scr_text("*шёпотом* не сейчас.",noone,noone,"Mike",_anya,"Anya");
scr_text("*шёпотом*  не хочу, чтобы он нас услышал...",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,noone,"Mike",_faceless,"Faceless",0.6,"Font_main","end");
break;

case "day2_faceless_door":
scr_text("(Стоит ли мне выходить?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","talk_end","No");
scr_option("Да","day2_faceless_door1","Yes");
break;

case "day2_faceless_door1":
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Хм...",noone,_mike,"Mike",noone,"Faceless");
scr_text("... Значит, мы снова увидимся завтра?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Именно так.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("*вздох*",noone,_mike,"Mike",noone,"Faceless");
scr_text("Досвидания...",noone,_mike,"Mike",noone,"Faceless");
scr_text("До новых встреч.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Майк, подожди.",noone,noone,"Mike",_anya,"Anya");
scr_text("Что такое?",noone,_mike,"Mike",noone,"Anya");
scr_text("Завтра утром я пойду в школу...",noone,noone,"Mike",_anya,"Anya");
scr_text("Пораньше.",noone,noone,"Mike",_anya,"Anya");
scr_text("Так что ты пойдешь туда один. Хорошо?",noone,noone,"Mike",_anya,"Anya");
scr_text("Ладно...",noone,_mike,"Mike",noone,"Anya");
scr_text("*вздох*",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day2_faceless_door2");
break
case "day2_faceless_door2":
scr_black(black_no,-1)
scr_text("Один...",noone,_mike,"Mike");
scr_No_option("day3_");
break
case "day3_":
scr_black(black_black,0);
scr_sound_sette(0,Sng_Timeless,true,2);
scr_text("...",noone,_mike,"Mike");
room_goto(room_room)
scr_No_option("day3_1");
break
case "day3_1":
obj_payer.phy_position_x=504;
obj_payer.phy_position_y=165;
obj_payer.sprite_index=spgd_
scr_text(" . . . ",noone,_mike,"Mike");
scr_text("И снова темно.",noone,_mike,"Mike");
scr_text("Завтра...",noone,_mike,"Mike");
scr_text("Кто-то действительно может пропасть завтра?",noone,_mike,"Mike");
scr_text("Это ведь просто шутка, так...",noone,_mike,"Mike");
scr_text("Мы ведь не будем ответственны, если это и правда произойдёт...",noone,_mike,"Mike");
scr_text("Так ведь?",noone,_mike,"Mike");
scr_text("...",noone,_mike,"Mike");
scr_text("*Бип*",Snd_clock,noone,"Mike");
scr_text("А?",noone,_mike,"Mike");
scr_text("Что это?",noone,_mike,"Mike");
scr_text("*Бип Бип*",Snd_clock,noone,"Mike");
scr_text("Этот звук...",noone,_mike,"Mike");
scr_text("Это будильник?",noone,_mike,"Mike");
scr_text("Мой будильник!?",noone,_mike,"Mike");
scr_text("*Бип Бип Бип*",Snd_clock,noone,"Mike");
scr_No_option("day3_2");
break
case "day3_2":
scr_black(black_no,1)
scr_sound_sette(1,Sng_Slowly,true,3);
obj_time.time_change=0;
scr_text("(Звук будильника разбудил меня.)",Snd_clock_off,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Что-то плохое действительно может произойти сегодня?",noone,_mike,"Mike");
scr_text("...",noone,_mike,"Mike");
scr_text("Надеюсь, что это все таки был просто сон...",noone,_mike,"Mike");
scr_text("Хм... сегодня мне снова надо будет идти в школу...",noone,_mike,"Mike");
scr_text("А на улице сегодня пасмурно. Надеюсь, дождя не будет.",noone,_mike,"Mike");
scr_No_option("day3_door");
break;
case "day3_door":
scr_black(black_no,-1)
scr_text("...",noone,_mike,"Mike");
scr_No_option("day3_door1");
break;
case "day3_door1":
scr_black(black_black,0)
scr_text("(Надев свою школьную форму я вышел из комнаты)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
obj_payer.phy_position_x=540;
obj_payer.phy_position_y=150;
obj_payer.sprite_index=spgd_s;
scr_No_option("day3_shkaf1");
break
case "day3_shkaf1":
scr_black(black_no,1)
obj_payer.cloth="school"
room_goto(_Room2);
scr_text("(Аня говорила, что придёт в школу пораньше, так что сегодня я пойду туда один...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think","end");
break;

case "day3_school0":
scr_text("(Пора ли мне заходить в школу?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_option("Нет","talk_end","No");
scr_option("Да","day3_school1","Yes");
break;

case "day3_school1":
scr_black(black_no,-2)
scr_text("...",noone,_mike,"Mike");
scr_No_option("day3_school1.1");
break;
case "day3_school1.1":
scr_black(black_black,0)
obj_payer.phy_position_x=60;
obj_payer.phy_position_y=315;
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
scr_text("(Зайдя внутрь, я дошёл до своего класса)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day3_school1.2");
break;
case "day3_school1.2":
obj_payer.faza[1]=0;
obj_payer.faza[2]=0;
obj_payer.faza[3]=0;
obj_payer.faza[4]=0;
obj_payer.faza[8]=0;
obj_payer.faza[9]=72;
obj_payer.faza[10]="zhenya_up";
obj_payer.faza[11]=1;
scr_black(black_no,1)
room_goto(room_school);
scr_sound_sette(0,Sng_Slowly,true,1);
scr_sound_sette(1,Sng_Colorful_Flowers,true,1);
scr_text("О, [wave]привет[/wave], Майк.",noone,noone,"Mike",_andrey,noone);
scr_text("Привет...",noone,_mike,"Mike",noone,noone);
scr_text("А где Аня?",noone,_mike,"Mike",noone,noone);
scr_text("Хм... не знаю.",noone,noone,"Mike",_andrey,noone);
scr_text("Я не видел её сегодня.",noone,noone,"Mike",_andrey,noone);
scr_text("Но она же сказала, что придёт раньше...",noone,_mike,"Mike",noone,noone);
scr_text("Может, что-то случилось?",noone,_mike,"Mike",noone,noone);
scr_text("Я думаю, что всё будет хорошо.",noone,noone,"Mike",_andrey,noone);
scr_text("... жаль только, что голова болит.",noone,noone,"Mike",_andrey,noone);
scr_text("Почему?",noone,_mike,"Mike",noone,noone);
scr_text("Из-за погоды.",noone,noone,"Mike",_andrey,noone);
scr_text("Погоде хреново, и мне хреново.",noone,noone,"Mike",_andrey,noone);
scr_text("*вздох*",noone,_mike,"Mike",noone,noone);
scr_text("(Безликий говорил...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Но ведь не может же Аня пропасть!)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(... по нашей вине...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("school1.1");
break;

case "day3_andrew_0":
scr_text("Ты уверен, что всё будет хорошо?",noone,_mike,"Mike",noone,noone);
scr_text("Ну... я надеюсь на это.",noone,noone,"Mike",_andrey,noone);
scr_text("(Безликий говорил...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Но ведь не может же Аня пропасть!)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(... по нашей вине...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day3_andrew_1");
break;

case "day3_andrew_1":
obj_payer.faza[1]=1;
scr_No_text();
break;

case "day3_zhenya_0":
scr_text("Ну... погода сегодня не очень...",noone,noone,"Mike",_zhenya,noone);
scr_text("И не говори.",noone,_mike,"Mike",noone,noone);
scr_No_option("day3_zhenya_1");
break;

case "day3_zhenya_1":
obj_payer.faza[9]=73;
obj_payer.faza[10]="zhenya_down";
obj_payer.faza[11]=1;
scr_text("Почему мне не говорить?",noone,noone,"Mike",_zhenya,noone);
scr_text("... это фигура речи такая.",noone,_mike,"Mike",noone,noone);
scr_text("Ну что же так сложно...",noone,noone,"Mike",_zhenya,noone);
scr_text("Сказал человек что-нибудь, а ты понимай, какой из тысячи смыслов он вложил в свои слова...",noone,noone,"Mike",_zhenya,noone);
scr_text("Эх...",noone,noone,"Mike",_zhenya,noone);
scr_No_option("day3_zhenya_2");
break;

case "day3_zhenya_2":
obj_payer.faza[9]=72;
obj_payer.faza[10]="zhenya_up";
obj_payer.faza[11]=1;
obj_payer.faza[2]=1;
scr_No_text();
break;

case "day3_nastya_0":
scr_text("Хм, привет Майк.",noone,noone,"Mike",_nastya,noone);
scr_text("Привет...",noone,_mike,"Mike",noone,noone);
scr_text("А где Аня?",noone,noone,"Mike",_nastya,noone);
scr_text("Я вот сам не знаю...",noone,_mike,"Mike",noone,noone);
scr_text("Хм...",noone,noone,"Mike",_nastya,noone);
scr_text("И Адама сегодня я не вижу.",noone,noone,"Mike",_nastya,noone);
scr_text("А?",noone,_mike,"Mike",noone,noone);
scr_text("(И ведь действительно...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Думаешь, это как-то связано?",noone,noone,"Mike",_nastya,noone);
scr_text("Я не знаю...",noone,_mike,"Mike",noone,noone);
scr_text("...",noone,_mike,"Mike",noone,noone);
scr_text("А что бы ты сделала, если-",noone,_mike,"Mike",noone,noone);
scr_text("(Нет)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Я не могу спрашивать о подобном)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Если что?",noone,noone,"Mike",_nastya,noone);
scr_text("Не, забудь.",noone,_mike,"Mike",noone,noone);
scr_text("Я неправильно подобрал слова...",noone,_mike,"Mike",noone,noone);
scr_text("Как думаешь, всё в порядке?",noone,_mike,"Mike",noone,noone);
scr_text("Ты об Ане с Адамом, или о погоде?",noone,noone,"Mike",_nastya,noone);
scr_text("А то и там, и там ситуация сомнительная.",noone,noone,"Mike",_nastya,noone);
scr_text("...",noone,_mike,"Mike",noone,noone);
scr_No_option("day3_nastya_1");
break;

case "day3_nastya_1":
obj_payer.faza[3]=1;
scr_No_text();
break;

case "day3_anna_0":
scr_black(black_no,-1);
obj_payer.faza[0]=3.6;
scr_sound_sette(0,Sng_Colorful_Flowers,true,1);

scr_text("...",noone,_mike,"Mike",noone,noone);
scr_text("(И в скоре начался урок)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day3_anna_1");
break;

case "day3_anna_1":
obj_payer.moment_skip=1;
scr_text("Итак, сегодня мы будем готовить-",noone,"Учитель",noone,noone,noone);
scr_No_option("day3_anna_2");
break;

case "day3_anna_2":
obj_payer.moment_skip=0;
scr_text("Можно вопрос?",noone,noone,noone,_nastya,noone);
scr_text("Что такое?",noone,"Учитель",noone,noone,noone);
scr_text("Вы не знаете, почему отсутствуют Адам и Аня?",noone,noone,noone,_nastya,noone);
scr_text("Адам отсутствует по... уважительной причине.",noone,"Учитель",noone,noone,noone);
scr_No_option("day3_anna_3");
break;

case "day3_anna_3":
obj_payer.moment_skip=1;
scr_text("А про Аню я не зна-",noone,"Учитель",noone,noone,noone);
scr_No_option("day3_anna_4");
break;

case "day3_anna_4":
scr_black(black_black,0);
obj_payer.moment_skip=0;
obj_payer.phy_position_x=64;
obj_payer.phy_position_y=230;
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
obj_payer.faza[0]=3.61;
obj_payer.faza[1]=0;
obj_payer.faza[2]=0;
obj_payer.faza[3]=0;
scr_sound_sette(1,Sng_Colorful_Flowers,true,2);
scr_text("Здравствуйте, извините за опоздание.",noone,noone,noone,"???",noone);
scr_text("Можно войти?",noone,noone,noone,_anya,"Anya");
scr_text("[wave]Привет[/wave], Аня!",noone,_andrey,noone,noone,"Anya");
scr_text("Мы думали, что тебя сдуло ветром!",noone,_andrey,noone,noone,"Anya");
scr_text("Нет, мы так не думали.",noone,_mike,"Mike",noone,"Anya");
scr_text("...ты ведь говорила, что придёшь пораньше...",noone,_mike,"Mike",noone,"Anya");
scr_text("Ну задержалась, с кем не бывает...",noone,noone,"Mike",_anya,"Anya");
scr_text("*вздох*",noone,"Учитель",noone,noone,"Anya");
scr_text("Присаживайся.",noone,"Учитель",noone,noone,"Anya");
scr_text("(И весь урок я не мог сконцентрироваться на учёбе.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Лишь думал о том, почему она задержалась...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("...",noone,_mike,"Mike",noone,noone);
scr_No_option("day3_anna_5");
break;

case "day3_anna_5":
scr_black(black_no,1);
obj_time.time_change=1;
scr_text("(И урок наконец-то закончился.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Теперь я могу поговорить с ней.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Кхем...",noone,_mike,"Mike",noone,"Anya");
scr_text("Где ты была?!",noone,_mike,"Mike",noone,"Anya");
scr_text("Ты понимаешь, как я волновался?",noone,_mike,"Mike",noone,"Anya");
scr_text("Особенно после вчерашнего ''кто-то может пропасть''...",noone,_mike,"Mike",noone,"Anya");
scr_text("У меня были свои причины.",noone,noone,"Mike",_anya,"Anya");
scr_text("Перед тем, как я хотела выйти из дома, папе написали по работе.",noone,noone,"Mike",_anya,"Anya");
scr_text("После этого он сразу побежал на работу... даже телефон забыл взять.",noone,noone,"Mike",_anya,"Anya");
scr_text("И на всякий случай, я тихонько взяла его.",noone,noone,"Mike",_anya,"Anya");
scr_text("Ты что!?",noone,_mike,"Mike",noone,"Anya");
scr_text("Мне нужно подобрать пароль от него...",noone,noone,"Mike",_anya,"Anya");
scr_text("Зачем?",noone,_mike,"Mike",noone,"Anya");
scr_text("Там явно есть информация об этих преступлениях...",noone,noone,"Mike",_anya,"Anya");
scr_text("Тех, о которых говорил Безликий?",noone,_mike,"Mike",noone,"Anya");
scr_text("Да...",noone,noone,"Mike",_anya,"Anya");
scr_text("Я подберу пароль, но это займёт время.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Тебе так важна эта информация?",noone,_mike,"Mike",noone,"Anya");
scr_text("Конечно!",noone,noone,"Mike",_anya,"Anya");
scr_text("Без неё я не смогу сама разобраться в этих преступлениях.",noone,noone,"Mike",_anya,"Anya");
scr_text("А я должна это сделать.",noone,noone,"Mike",_anya,"Anya");
scr_text("Раньше, чем мой папа.",noone,noone,"Mike",_anya,"Anya");
scr_text("Почему?",noone,_mike,"Mike",noone,"Anya");
scr_text("Он считает, что мне не стать детективом.",noone,noone,"Mike",_anya,"Anya");
scr_text("Что я не способна на это.",noone,noone,"Mike",_anya,"Anya");
scr_text("Я разберусь во всём этом, и докажу ему обратное.",noone,noone,"Mike",_anya,"Anya");
scr_text("И ты мне в этом поможешь.",noone,noone,"Mike",_anya,"Anya");
scr_text("Как?",noone,_mike,"Mike",noone,"Anya");
scr_text("Ты можешь попадать в мир снов.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("И кроме этого...",noone,noone,"Mike",_anya,"Anya");
scr_text("Какая комбинация из шести цифр приходит тебе на ум?",noone,noone,"Mike",_anya,"Anya");
scr_text("хм...",noone,_mike,"Mike",noone,"Anya");
scr_text("(Идея для пароля от телефона...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(Наверное, это...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_option("050106","day3_050106","050106");
scr_option("030907","day3_030907","030907");
scr_option("396928","day3_396928","396928");
break;

case "day3_050106":
obj_payer.faza[1]=1;
scr_text("Что если 050106?",noone,_mike,"Mike",noone,"Anya");
scr_text("Почему?",noone,noone,"Mike",_anya,"Anya");
scr_text("Ну... 05 + 01 = 06",noone,_mike,"Mike",noone,"Anya");
scr_text("Логично?",noone,_mike,"Mike",noone,"Anya");
scr_text("*Бип*",noone,noone,"Mike",noone,"Anya");
scr_text("Нет, не логично...",noone,noone,"Mike",_anya,"Anya");
if (obj_payer.faza[2]=0) scr_option("030907","day3_030907","030907");
if (obj_payer.faza[3]=0) scr_option("396928","day3_396928","396928");
if (obj_payer.faza[1]=1 and obj_payer.faza[2]=1 and obj_payer.faza[3]=1) scr_No_option("day3_anna_6");
break;

case "day3_030907":
obj_payer.faza[2]=1;
scr_text("А если... 030907?",noone,_mike,"Mike",noone,"Anya");
scr_text("Странно, но ладно...",noone,noone,"Mike",_anya,"Anya");
scr_text("*Бип*",noone,noone,"Mike",noone,"Anya");
scr_text("Нет, не ладно...",noone,noone,"Mike",_anya,"Anya");
if (obj_payer.faza[1]=0) scr_option("050106","day3_050106","050106");
if (obj_payer.faza[3]=0) scr_option("396928","day3_396928","396928");
if (obj_payer.faza[1]=1 and obj_payer.faza[2]=1 and obj_payer.faza[3]=1) scr_No_option("day3_anna_6");
break;

case "day3_396928":
obj_payer.faza[3]=1;
scr_text("А если 396928?",noone,_mike,"Mike",noone,"Anya");
scr_text("Ты это на рандоме сказал?",noone,noone,"Mike",_anya,"Anya");
scr_text("Нет, просто три прикольных числа...",noone,_mike,"Mike",noone,"Anya");
scr_text("*Бип*",noone,noone,"Mike",noone,"Anya");
scr_text("Нет, не прикольных...",noone,noone,"Mike",_anya,"Anya");
if (obj_payer.faza[1]=0) scr_option("050106","day3_050106","050106");
if (obj_payer.faza[2]=0) scr_option("030907","day3_030907","030907");
if (obj_payer.faza[1]=1 and obj_payer.faza[2]=1 and obj_payer.faza[3]=1) scr_No_option("day3_anna_6");
break;

case "day3_anna_6":
scr_text("Гх... чёрт.",noone,noone,"Mike",_anya,"Anya");
scr_text("Я думаю, мне нужно больше времени.",noone,noone,"Mike",_anya,"Anya");
scr_text("Хорошо.",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day3_anna_7");
break;

case "day3_anna_7":
scr_black(black_no,-1.5)
obj_time.time_change=2;
scr_text("(Я придумывал различные числа для Ани вплоть до вечера)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_No_option("day3_anna_8");
break;

case "day3_anna_8":
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("*Бип*",noone,noone,"Mike",noone,"Anya");
scr_option("327902","day3_anna_10","327902");
break;

case "day3_anna_10":
obj_payer.phy_position_x=160;
obj_payer.phy_position_y=230;
switch(obj_payer.cloth)
	{
	case "school":
	sprite_index=spgu_s;
	break;
	case "school_1":
	sprite_index=spgu_s_1;
	break;
	}
scr_black(black_black,-1.5)
scr_text("327902?",noone,_mike,"Mike",noone,"Anya");
scr_text(" *Бип*",noone,noone,"Mike",noone,"Anya");
scr_option("182819","day3_anna_11","182819");
break;

case "day3_anna_11":

scr_text("182819?",noone,_mike,"Mike",noone,"Anya");
scr_text("*Бип*",noone,noone,"Mike",noone,"Anya");
scr_option("666999","day3_anna_12","666999");
break;

case "day3_anna_12":
room_goto(room_home);
scr_black(black_no,1)
scr_text("666999?",noone,_mike,"Mike",noone,"Anya");
scr_text("*Бип*",noone,noone,"Mike",noone,"Anya");
scr_text("Да чёрт!",noone,noone,"Mike",_anya,"Anya");
scr_text("А что вы делаете?",noone,noone,"Mike",_masha,"Masha");
scr_text("Ищем пароль.",noone,_mike,"Mike",noone,"Masha");
scr_text("Пароль?",noone,noone,"Mike",_masha,"Masha");
scr_text("Шесть цифр.",noone,_anya,"Anya",noone,"Masha");
scr_text("Маш, есть идея?",noone,_anya,"Anya",noone,"Masha");
scr_text("Шесть цифр?",noone,noone,"Anya",_masha,"Masha");
scr_text("Ну...",noone,noone,"Anya",_masha,"Masha");
scr_text("Хм...",noone,noone,"Anya",_masha,"Masha");
scr_text("13...",noone,noone,"Anya",_masha,"Masha");
scr_text("затем 11...",noone,noone,"Anya",_masha,"Masha");
scr_text("и в конце... так...",noone,noone,"Anya",_masha,"Masha");
scr_text("98",noone,noone,"Anya",_masha,"Masha");
scr_text("131198?",noone,_anya,"Anya",noone,"Masha");
scr_text("Да, вроде так.",noone,noone,"Anya",_masha,"Masha");
scr_text("А что это за число?",noone,_mike,"Mike",noone,"Masha");
scr_text("Дата рождения мамы.",noone,noone,"Mike",_masha,"Masha");
scr_text("Твоей мамы?",noone,_anya,"Anya",noone,"Masha");
scr_text("Ага. 13.11.1998",noone,noone,"Anya",_masha,"Masha");
scr_text("Я запомнила это, ведь это ещё и всемирный день доброты!",noone,noone,"Anya",_masha,"Masha");
scr_text("Правда?",noone,_mike,"Mike",noone,"Masha");
scr_text("Ну... вроде да.",noone,_anya,"Anya",noone,"Masha");
scr_text("Не думаю, что получится, но всё же...",noone,_anya,"Anya",noone,"Masha");
scr_text("*Плип*",noone,noone,"Anya",noone,"Masha");
scr_text("А? Получилось?!",noone,_anya,"Anya",noone,"Masha");
scr_text("Но... почему?",noone,_anya,"Anya",noone,"Masha");
scr_text("...?",noone,noone,"Anya",_masha,"Masha");
scr_text("Я молодец?",noone,noone,"Anya",_masha,"Masha");
scr_text("Ну конечно же!",noone,_anya,"Anya",noone,"Masha");
scr_text("Ура!...",noone,noone,"Anya",_masha,"Masha");
scr_text("И что произошло?",noone,noone,"Anya",_masha,"Masha");
scr_text("Ну... ты можешь пойти спать.",noone,_mike,"Mike",noone,"Masha");
scr_text("Хух... а раньше я не могла?",noone,noone,"Mike",_masha,"Masha");
scr_text("Нет.",noone,_mike,"Mike",noone,"Masha");
scr_text("Так что иди, наслаждайся моментом.",noone,_mike,"Mike",noone,"Masha");
scr_text("Хорошо...",noone,noone,"Mike",_masha,"Masha");
scr_text("Спокойной ночи.",noone,noone,"Mike",_masha,"Masha");
scr_text("И тебе тоже.",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day3_anna_13");
break;

case "day3_anna_13":
scr_black(black_no,-1.5)
obj_payer.faza[9]=-64;
obj_payer.faza[10]="masha_left";
obj_payer.faza[11]=3;

scr_sound_sette(0,Sng_Colorful_Flowers,true,1);
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Ну как?",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Тут какая-то переписка...",noone,noone,"Mike",_anya,"Anya");
scr_text("Здравствуйте, Александр.",noone,"???","Unknown",noone,"Sasha");
scr_text("Здравствуй.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Что-то случилось?",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Да.",noone,"???","Unknown",noone,"Sasha");
scr_text("Ей лучше?",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Прошлый пациент? Её состояние не изменилось.",noone,"???","Unknown",noone,"Sasha");
scr_text("Но этот ребёнок, что попал в больницу сегодня...",noone,"???","Unknown",noone,"Sasha");
scr_text("Температура его тела в норме, никаких внешних или внутренних причин его состояния не обнаружено.",noone,"???","Unknown",noone,"Sasha");
scr_text("С чем это может быть связано?",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Я не уверена...",noone,"???","Unknown",noone,"Sasha");
scr_text("Возможно, [c_yellow]это[c_white] повторяется.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("А?",noone,"???","Unknown",noone,"Sasha");
scr_text("Всё это...",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Ничего тебе не напоминает?",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("О чём ты?",noone,"???","Unknown",noone,"Sasha");
scr_text("О тех убийствах семилетней давности.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Ты считаешь, что они как-то связаны с происходящим сейчас?",noone,"???","Unknown",noone,"Sasha");
scr_text("Я не считаю.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Считают математики, а я строю предложения.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Но... разве то дело не было закрыто несколько лет назад?",noone,"???","Unknown",noone,"Sasha");
scr_text("Да, я знаю.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Не думаю, что кто-либо попытается совершить что-либо [c_yellow]подобное[c_white]...",noone,"???","Unknown",noone,"Sasha");
scr_text("Но нам нельзя отрицать эту теорию без явных аргументов против неё.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Мы не дадим новым жертвам погибнуть.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Да.",noone,"???","Unknown",noone,"Sasha");
scr_text("",noone,"???","Unknown",noone,"Sasha");
scr_text("А кстати, тот парень, что вчера попал сюда...",noone,"???","Unknown",noone,"Sasha");
scr_text("Он ведь был знаком с твоей дочкой?",noone,"???","Unknown",noone,"Sasha");
scr_text("Они ведь теперь учатся в одном классе...",noone,"???","Unknown",noone,"Sasha");
scr_text("Может у неё что-нибудь узнать?",noone,"???","Unknown",noone,"Sasha");
scr_text("Я не могу втягивать мою дочь в это.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Я не хочу, чтоб она повторила судьбу Ричарда.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Ты о чём?",noone,"???","Unknown",noone,"Sasha");
scr_text("О том, когда он сунул свой нос не в своё дело, и был ложно обвинён в тех преступлениях.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Ах... да...",noone,"???","Unknown",noone,"Sasha");
scr_text("Я не хочу, чтобы её любопытство погубило её будущее.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Но... ты же понимаешь, что она всё равно попытается изучить всё сама, что бы ты ей не говорил?",noone,"???","Unknown",noone,"Sasha");
scr_text("И про Адама она рано или поздно узнает.",noone,"???","Unknown",noone,"Sasha");
scr_text("Как бы ты не пытался уберечь её от всего этого, она точно узнает правду.",noone,"???","Unknown",noone,"Sasha");
scr_text("Тебе нужно рассказать ей обо всём, пока не стало слишком поздно.",noone,"???","Unknown",noone,"Sasha");
scr_text("Иначе она перестанет доверять тебе, зная что ты скрываешь от неё всё это...",noone,"???","Unknown",noone,"Sasha");
scr_text("Про обоих пациентов. Понимаешь?",noone,"???","Unknown",noone,"Sasha");
scr_text("",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Нет.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Ты не понимаешь.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Лучше будет как можно быстрее раскрыть это дело.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Надеюсь, тогда у нас появится спасти этих и будущих пациентов.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("Чем быстрее мы узнаем правду, тем лучше будет для всех нас.",noone,noone,"Unknown",_sasha,"Sasha");
scr_text("И для тебя тоже.",noone,noone,"Unknown",_sasha,"Sasha");
scr_No_option("day3_anna_14");
break;

case "day3_anna_14":
scr_black(black_no,1.5)
scr_text("",noone,noone,noone,noone,noone);
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("О чём они говорили?",noone,noone,"Mike",_anya,"Anya");
scr_text("Я не уверен...",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Хм?",noone,_mike,"Mike",noone,"Anya");
scr_text("Этот человек...",noone,_mike,"Mike",noone,"Anya");
scr_text("Он пишет что-то?",noone,_mike,"Mike",noone,"Anya");
scr_text("Чт?!",noone,noone,"Mike",_anya,"Anya");
scr_text("Привет.",noone,"???","Unknown",noone,noone);
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("(что нам делать?)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Аня, это ведь ты сейчас за телефоном?",noone,"???","Unknown",noone,noone);
scr_text("Хм?! Как она узнала?",noone,noone,"Mike",_anya,"Anya");
scr_text("Ответь мне, пожалуйста.",noone,"???","Unknown",noone,noone);
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("''Да, это я.''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Что ты делаешь?!",noone,_mike,"Mike",noone,"Anya");
scr_text("Пишу.",noone,noone,"Mike",_anya,"Anya");
scr_text("А если твой папа узнает?",noone,_mike,"Mike",noone,"Anya");
scr_text("Неважно.",noone,noone,"Mike",_anya,"Anya");
scr_text("Я не могу бросить это на пол пути.",noone,noone,"Mike",_anya,"Anya");
scr_text("Другого шанса узнать правду у меня может не быть...",noone,noone,"Mike",_anya,"Anya");
scr_text("Славно.",noone,"???","Unknown",noone,"Anya");
scr_text("Сашка долго негодовал, что оставил свой телефон дома...",noone,"???","Unknown",noone,"Anya");
scr_text("И тут кто-то внезапно входит с него в нашу переписку.",noone,"???","Unknown",noone,"Anya");
scr_text("Кто же, если не ты.",noone,"???","Unknown",noone,"Anya");
scr_text("Прочти сообщения выше.",noone,"???","Unknown",noone,"Anya");
scr_text("''Уже сделала.''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Хорошо.",noone,"???","Unknown",noone,"Anya");
scr_text("Но перед этим один вопрос...",noone,"???","Unknown",noone,"Anya");
scr_text("Тебе или твоим друзьям снился некто... что называл себя ''Безликий''?",noone,"???","Unknown",noone,"Anya");
scr_text("?!",noone,noone,"Mike",_anya,"Anya");
scr_text("Откуда... ей известно...",noone,_mike,"Mike",noone,"Anya");
scr_text("''Откуда ты знаешь о нём?''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Так значит и о нём тебе уже всё известно.",noone,"???","Unknown",noone,"Anya");
scr_text("Я встретилась с ним несколько лет назад.",noone,"???","Unknown",noone,"Anya");
scr_text("''Но разве взрослые могут попадать в тот, друг мир?''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Хоть у детей это получается лучше, люди до лет так 23 вполне могут попадать в тот мир.",noone,"???","Unknown",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Она работала с Безликим?",noone,noone,"Mike",_anya,"Anya");
scr_text("... сколько лет назад это было?...",noone,noone,"Mike",_anya,"Anya");
scr_text("(Не сказав ни слова больше она продолжила переписку.)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("''Что тебе нужно?''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Рассказать тебе правду.",noone,"???","Unknown",noone,"Anya");
scr_text("Послушай, то, что сейчас происходит с Адамом...",noone,"???","Unknown",noone,"Anya");
scr_text("Его состояние...",noone,"???","Unknown",noone,"Anya");
scr_text("Сегодня он был доставлен в больницу.",noone,"???","Unknown",noone,"Anya");
scr_text("Он выглядел... ...безжизненно(?)",noone,"???","Unknown",noone,"Anya");
scr_text("Не знаю как описать это лучше.",noone,"???","Unknown",noone,"Anya");
scr_text("Ты понимаешь, о чём все думают?",noone,"???","Unknown",noone,"Anya");
scr_text("''Это то же самое, что было здесь семь лет назад.''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Именно.",noone,"???","Unknown",noone,"Anya");
scr_text("Я предполагаю, что то произошло с ним в том мире.",noone,"???","Unknown",noone,"Anya");
scr_text("хм?...",noone,noone,"Mike",_anya,"Anya");
scr_text("Если это... именно то, о чём говорил Безликий...",noone,noone,"Mike",_anya,"Anya");
scr_text("Тебе и твоим друзьям нужно помочь ему.",noone,"???","Unknown",noone,"Anya");
scr_text("Иначе он продолжит эту ужасную статистику.",noone,"???","Unknown",noone,"Anya");
scr_text("(Что-то дрогнуло в моей груди от одной лишь мысли об этом.)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Раз вы уже виделись с Безликим, должно быть только у вас здесь есть возможность помочь ему.",noone,"???","Unknown",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Нам действительно придётся помогать ему в одиночку?",noone,_mike,"Mike",noone,"Anya");
scr_text("Может попросить кого-нибудь о помощи?",noone,_mike,"Mike",noone,"Anya");
scr_text("Мы не можем.",noone,noone,"Mike",_anya,"Anya");
scr_text("Взрослые уже не смогут полноценно попасть в тот мир...",noone,noone,"Mike",_anya,"Anya");
scr_text("А про кого-нибудь из наших одноклассников...",noone,noone,"Mike",_anya,"Anya");
scr_text("Хоть поверить мне в это сложно...",noone,noone,"Mike",_anya,"Anya");
scr_text("Но, если помнишь, Безликий говорил, что кто-то из них ответственен в этом.",noone,noone,"Mike",_anya,"Anya");
scr_text("Или как минимум помогает этому случиться.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("(Я уже забыл про это...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(Хотя всё это я услышал ещё вчера.)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(...Слишком много новой информации...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("*вздох*",noone,noone,"Mike",_anya,"Anya");
scr_text("''Почему ты помогаешь нам?''",noone,noone,"Unknown",_anya,"Anya");
scr_text("Потому что могу.",noone,"???","Unknown",noone,"Anya");
scr_text("Что за глупый вопрос?",noone,"???","Unknown",noone,"Anya");
scr_text("Я не хочу, чтобы умер человек.",noone,"???","Unknown",noone,"Anya");
scr_text("А уж тем более, чтобы вы винили себя в этом.",noone,"???","Unknown",noone,"Anya");
scr_text("Я верю, что у тебя всё получится.",noone,"???","Unknown",noone,"Anya");
scr_text("''Спасибо.''",noone,noone,"Unknown",_anya,"Anya");
scr_text("",noone,"???","Unknown",noone,"Anya");
scr_text("Не волнуйся, я удалю наши сообщения друг другу.",noone,"???","Unknown",noone,"Anya");
scr_text("Только в начале, хочу чтобы ты узнала ещё кое-что.",noone,"???","Unknown",noone,"Anya");
scr_text("Адам не единственный, кто попал в больницу.",noone,"???","Unknown",noone,"Anya");
scr_text("Ещё ",noone,"???","Unknown",noone,"Anya");
scr_text("     ",noone,"???","Unknown",noone,"Anya");
scr_text("        ",noone,"???","Unknown",noone,"Anya");
scr_text("           ",noone,"???","Unknown",noone,"Anya");
scr_text("Что?",noone,noone,"Mike",_anya,"Anya");
scr_text("Она просто вышла?",noone,noone,"Mike",_anya,"Anya");
scr_text("Даже предложение не дописала…",noone,noone,"Mike",_anya,"Anya");
scr_text("Хм...",noone,_mike,"Mike",noone,"Anya");
scr_text("Так... это действительно правда...",noone,noone,"Mike",_anya,"Anya");
scr_text("То, о чём говорил Безликий.",noone,noone,"Mike",_anya,"Anya");
scr_text("Адам пропал в свой внутренний мир.",noone,noone,"Mike",_anya,"Anya");
scr_text("И если мы не спасём его оттуда, то он...",noone,noone,"Mike",_anya,"Anya");
scr_text("Погибнет.",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Мы должны ему помочь.",noone,noone,"Mike",_anya,"Anya");
scr_text("Ведь если не мы, то никто не поможет ему.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Но... у меня всё ещё куча вопросов.",noone,_mike,"Mike",noone,"Anya");
scr_text("О чём они говорили?",noone,_mike,"Mike",noone,"Anya");
scr_text("Чья-то вина, убийства...",noone,_mike,"Mike",noone,"Anya");
scr_text("Судя по их словам они говорили об преступлениях семилетней давности.",noone,noone,"Mike",_anya,"Anya");
scr_text("То, ради которого Безликий позвал себе помощника?",noone,_mike,"Mike",noone,"Anya");
scr_text("Да...",noone,noone,"Mike",_anya,"Anya");
scr_text("Официальная версия гласила, что несколько человек были отравлены.",noone,noone,"Mike",_anya,"Anya");
scr_text("В начале был ложно обвинён 16-ти летний подросток.",noone,noone,"Mike",_anya,"Anya");
scr_text("А потом настоящий виновный сам признался в содеянном.",noone,noone,"Mike",_anya,"Anya");
scr_text("Хоть все и думали, что он отравлял людей...",noone,noone,"Mike",_anya,"Anya");
scr_text("Но, по словам Безликого, он, видимо проникал во внутренние миры этих людей, и разрушал их сознание.",noone,noone,"Mike",_anya,"Anya");
scr_text("После этого эти люди умирали, что спутали с эффектами от отравления...",noone,noone,"Mike",_anya,"Anya");
scr_text("Подслушав папин разговор незадолго до того, как ты приехал, я узнала, что [c_yellow]истинная причина[c_white] нашего переезда - подробное изучение тех событий.",noone,noone,"Mike",_anya,"Anya");
scr_text("Так-как сейчас происходит нечто подобное...",noone,noone,"Mike",_anya,"Anya");
scr_text("Теперь я уверена в этом.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Человек, что разрушает чужие создания...",noone,_mike,"Mike",noone,"Anya");
scr_text("(И при этом это кто-то, кого я знаю...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Разве это не будет опасно?",noone,_mike,"Mike",noone,"Anya");
scr_text("Особенно без помощи взрослых?",noone,_mike,"Mike",noone,"Anya");
scr_text("... боюсь, у нас просто нет выбора.",noone,noone,"Mike",_anya,"Anya");
scr_text("Ведь сколько бы папа не исследовал здесь происходящее...",noone,noone,"Mike",_anya,"Anya");
scr_text("Ему никак не попасть в другой мир.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Но то о чём они говорили...",noone,_mike,"Mike",noone,"Anya");
scr_text("Твой отец не хочет, чтоб ты занималась этим.",noone,_mike,"Mike",noone,"Anya");
scr_text("...",noone,noone,"Mike",_anya,"Anya");
scr_text("Он просто не понимает меня.",noone,noone,"Mike",_anya,"Anya");
scr_text("Считает, что я ещё мала для подобных расследований.",noone,noone,"Mike",_anya,"Anya");
scr_text("Он даже про то, что случилось с Адамом рассказать мне не хотел.",noone,noone,"Mike",_anya,"Anya");
scr_text("Он явно волнуется за тебя.",noone,_mike,"Mike",noone,"Anya");
scr_text("Одно дело когда он просто волнуется, а другое когда он не даёт мне показать ему все свои способности.",noone,noone,"Mike",_anya,"Anya");
scr_text("Я обязана помочь Адаму.",noone,noone,"Mike",_anya,"Anya");
scr_text("Изучить тот мир.",noone,noone,"Mike",_anya,"Anya");
scr_text("Понять, кто ответственен за это.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("(''её любопытство погубило её будущее''?)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(О чём он говорил?)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(И кто этот ''второй пациент''?)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("Тогда надо встретиться с Безликим как можно скорее.",noone,_mike,"Mike",noone,"Anya");
scr_text("Да.",noone,noone,"Mike",_anya,"Anya");
scr_text("Спокойной ночи?",noone,noone,"Mike",_anya,"Anya");
scr_No_option("day3_anna_15");
break;

case "day3_anna_15":
scr_black(black_no,-1);
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_text("(Адам пропал в том мире...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day3_anna_16");
break;

case "day3_anna_16":
scr_black(black_black,-1);
room_goto(room_faceles);
obj_payer.faza[9]=930;
obj_payer.faza[10]="anna_right";
obj_payer.faza[11]=2;
scr_text("(Что-же меня ждёт там?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day3_anna_17");
break;

case "day3_anna_17":
obj_payer.phy_position_x=1000;
obj_payer.phy_position_y=550;
obj_payer.cloth="deff"
obj_payer.sprite_index=spgu_
scr_text("*Вздох*",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("day3_faceless_0");
break;

case "day3_faceless_0":
scr_black(black_no,1);
obj_time.time_change=3;
scr_sound_sette(1,Sng_Timeless,true,1);
scr_text("(И вот, я снова тут.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Здравствуйте, Майк и Аня.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Вы пришли к решению?",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Готовы ли Вы помогать мне?",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_anya,"Anya",noone,"Faceless");
scr_text("Да.",noone,_anya,"Anya",noone,"Faceless");
scr_text("Мы готовы.",noone,_anya,"Anya",noone,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Наш друг попал в этот мир.",noone,_mike,"Mike",noone,"Faceless");
scr_text("Мы должны помочь ему...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Ясно.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Что нам делать?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Для начала мне нужно открыть дверь во внутренний мир Вашего друга.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Сейчас Ваш друг должен быть именно там.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("А для этого мне нужно узнать больше о Вашем друге.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("...",noone,_anya,"Anya",noone,"Faceless");
scr_text("Его зовут Адам.",noone,_mike,"Mike",noone,"Faceless");
scr_text("Он такой... спокойный, молчаливый...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Хм...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("У него голубые глаза, чёрные волосы...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Он...",noone,_mike,"Mike",noone,"Faceless");
scr_text("При моём с ним знакомстве он выглядел так...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Как будто скрывал ото всех... что-то...",noone,_mike,"Mike",noone,"Faceless");
scr_text("(хм...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(Только сейчас я задумался над этим...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Ясно...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Надеюсь, этого будет достаточно.",noone,noone,"Mike",_faceless,"Faceless");
scr_No_option("day3_faceless_1");
break;

case "day3_faceless_1":
scr_black(black_no,-2);
scr_text("(Сказав это, он принялся рисовать что-то.)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("(Это..?)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(Дверь.)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_No_option("day3_faceless_2");
break;

case "day3_faceless_2":
scr_black(black_no,2);
obj_payer.faza[0]=3.62;
scr_text("Готово.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Этого оказалось достаточно?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Если пройдя через эту дверь Вы действительно окажетесь во внутреннем мире Адама, то всё сработало.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("А если нет?...",noone,_anya,"Anya",noone,"Faceless");
scr_text("(Безликий ели заметно пожал плечами.)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("*вздох*",noone,_mike,"Mike",noone,"Faceless");
scr_text("Пройдя через дверь Вам потребуется найти Вашего друга и привести его сюда.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Отсюда он сможет вернуться в реальность так же просто, как это делаете Вы.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Ясно...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Надеюсь, там Вам не придётся сражаться с существами того мира...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("А... А если предётся?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Мы даже защищаться не умеем!",noone,_anya,"Anya",noone,"Faceless");
scr_text("Всё Вы умеете.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Это же мир снов и эмоций. Если Вам нужно будет защизаться, Вам придёться просто высвободить Ваши эмоции.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("Ничего не поняла...",noone,_anya,"Anya",noone,"Faceless");
scr_text("Вы поймёте когда будет необходимо.",noone,noone,"Anya",_faceless,"Faceless");
scr_text("*вздох*",noone,_mike,"Mike",noone,"Faceless");
scr_No_option("day3_faceless_3");
break;

case "day3_faceless_3":
scr_black(black_no,-1);
scr_sound_sette(0,Sng_Timeless,true,1);
scr_text("(Я медленно повернул ручку двери.)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("(И внезапно она распахнулась перед мною...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Пошли?",noone,_mike,"Mike",noone,"Anya");
scr_text("Подожди.",noone,noone,"Mike",_anya,"Anya");
scr_text("(Сказав это она выдала по одному маленькому наушнику мне, себе и даже Безликому.)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Вот. Я приготовила это на всякий случай.",noone,noone,"Mike",_anya,"Anya");
scr_text("Так у нас будет возможность связаться друг с другом.",noone,noone,"Mike",_anya,"Anya");
scr_text("На всякий случай.",noone,noone,"Mike",_anya,"Anya");
scr_text("Хм...",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Хорошо.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Желаю Вам удачи.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("...",noone,_mike,"Mike",noone,"Faceless");
scr_text("Спасибо...",noone,_mike,"Mike",noone,"Faceless");
scr_text("(Медленно мы прошли через эту дверь.)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("А как ты пронесла сюда наушники?",noone,_mike,"Mike",noone,"Anya");
scr_text("Ну...",noone,noone,"Mike",_anya,"Anya");
scr_text("Вчера я уснула вместе с брелком в своём кармане.",noone,noone,"Mike",_anya,"Anya");
scr_No_option("day3_faceless_3_");
break;

case "day3_faceless_3_":
scr_text("И он оказался в моём кармане и в этом мире тоже.",noone,noone,"Mike",_anya,"Anya");
obj_payer.phy_position_x=1030;
obj_payer.phy_position_y=480;
obj_payer.faza[9]=0;
obj_payer.faza[10]=noone;
obj_payer.faza[11]=0;
scr_No_option("day3_faceless_3__");
break;

case "day3_faceless_3__":
room_goto(room_edem);
scr_text("Наверное, в этом есть логика.",noone,noone,"Mike",_anya,"Anya");
scr_text("Просто я не могу её сформулировать...",noone,noone,"Mike",_anya,"Anya");
scr_option("Ясно.","day3_faceless_3.1","Clear.");
scr_option("Не понятно...","day3_faceless_3.2","It's not clear...");
scr_option("Ты что, сейчас спишь с наушниками?","day3_faceless_3.3","Are you sleeping with headphones on now?");
break;

case "day3_faceless_3.1":
scr_text("Ясно...",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day3_faceless_4");
break;

case "day3_faceless_3.2":
scr_text("Мне не очень понятно...",noone,_mike,"Mike",noone,"Anya");
scr_text("Тогда просто прийми это как факт.",noone,noone,"Mike",_anya,"Anya");
scr_text("...",noone,_mike,"Mike",noone,"Anya");
scr_No_option("day3_faceless_4");
break;

case "day3_faceless_3.3":
scr_text("Погоди, ты что, сейчас спишь с наушниками в кармане?",noone,_mike,"Mike",noone,"Anya");
scr_text("А что мне ещё осталось делать?",noone,noone,"Mike",_anya,"Anya");
scr_text("Наверное, вещи необязательно складывать в карман...",noone,noone,"Mike",_anya,"Anya");
scr_text("Возможно достаточно держать их рядом.",noone,noone,"Mike",_anya,"Anya");
scr_text("Только эта теория всё ещё требует проверки.",noone,noone,"Mike",_anya,"Anya");
scr_No_option("day3_faceless_4");
break;

case "day3_faceless_4":
scr_text("Хм...",noone,_mike,"Mike",noone,"Anya");
scr_text("Здесь так темно...",noone,_mike,"Mike",noone,"Anya");
scr_text("Я не знаю...",noone,noone,"Mike",_anya,"Anya");
scr_No_option("day3_adam_0");
break;

case "day3_adam_0":
scr_black(no_no,3);
scr_sound_sette(1,Sng_Pink_grass,true,1);
scr_text("!?",noone,_mike,"Mike",noone,"Anya");
scr_text("Что происходит?",noone,_mike,"Mike",noone,"Anya");
scr_text("Это... поляна?",noone,noone,"Mike",_anya,"Anya");
scr_text("Розовая трава...",noone,_mike,"Mike",noone,"Anya");
scr_text("Постельное окружение...",noone,_mike,"Mike",noone,"Anya");
scr_text("(Это и есть внутренний мир Адама?)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think","end");
break;

case "tree_adam_noone":
//inv_open_box()
scr_text("Хм...",noone,_mike,"Mike");
scr_text("(Это ведь деревья, да?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think","end"); 
//scr_No_text()
break;

case "tree_adam_anna":
scr_text("Майк, смотри...",noone,noone,"Mike",_anya,"Anya");
scr_text("Это там... человек?",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
break;

case "tree_adam_0":
scr_text("Хм?",noone,_mike,"Mike",noone,"Anya");
scr_text("(На этом дереве висит... человек!?)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("...",noone,noone,"Mike",noone,"Anya");
scr_text("(Его лицо...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Это... Адам?",noone,_mike,"Mike",noone,"Anya");
scr_No_option("tree_adam_1");
break;

case "tree_adam_1":
obj_payer.faza[0]=4.1

scr_text("А?",noone,noone,"Mike","Адам?","Adam0");
scr_text("Кто здесь?",noone,noone,"Mike","Адам?","Adam0");
scr_text("...Майк, это ты?",noone,noone,"Mike","Адам?","Adam0");
scr_text("Что ты там делаешь?",noone,_anya,"Anya",noone,"Adam0");
scr_text("... Висю.",noone,noone,"Anya","Адам?","Adam0");
scr_text("А... зачем?",noone,_mike,"Mike",noone,"Adam0");
scr_text("А почему бы и нет?",noone,noone,"Mike","Адам?","Adam0");
scr_text("Тут приятно...",noone,noone,"Mike","Адам?","Adam0");
scr_text("Не нужно лишний раз ходить куда-либо.",noone,noone,"Mike","Адам?","Adam0");
scr_text("Не нужно тратить силы на стояние на земле...",noone,noone,"Mike","Адам?","Adam0");
scr_text("А ты можешь спуститься?",noone,_mike,"Mike",noone,"Adam0");
scr_text("Зачем?",noone,noone,"Mike","Адам?","Adam0");
scr_text("Нам будет проще с тобой говорить.",noone,_mike,"Mike",noone,"Adam0");
scr_text("*вздох*",noone,noone,"Mike","Адам?","Adam0");
scr_text("Я не хочу.",noone,noone,"Mike","Адам?","Adam0");
scr_text("А значит, я не буду.",noone,noone,"Mike","Адам?","Adam0");
scr_text("Я спущусь только если эти ленты внезапно порвутся.",noone,noone,"Mike","Адам?","Adam0");
scr_text("И никак иначе.",noone,noone,"Mike","Адам?","Adam0");
scr_No_option("tree_adam_2");
break;

case "tree_adam_2":
obj_payer.faza[0]=4.2
obj_payer.moment_skip=1;
scr_text("?",noone,noone,"Mike","Адам?",noone);
scr_text("*Бум*",noone,noone,"Mike",noone,"Adam01");
scr_text("Ай...",noone,noone,"Mike","Адам?","Adam01");
scr_No_option("tree_adam_2.1");
break;

case "tree_adam_2.1":
obj_payer.moment_skip=0;
scr_text("Ты в порядке?",noone,_mike,"Mike",noone,"Adam01");
scr_text("...",noone,noone,"Mike","Адам?","Adam01");
scr_text("Адам, пошли с нами.",noone,_anya,"Anya",noone,"Adam01");
scr_text("Куда?",noone,noone,"Anya","Адам?","Adam01");
scr_text("Домой.",noone,_anya,"Anya",noone,"Adam01");
scr_text("Но... мы итак дома...",noone,noone,"Anya","Адам?","Adam01");
scr_text("О чём ты?",noone,_mike,"Mike",noone,"Adam01");
scr_text("Я ведь никогда не покидал эту поляну.",noone,noone,"Mike","Адам?","Adam01");
scr_text("В смысле?",noone,_mike,"Mike",noone,"Adam01");
scr_No_option("tree_adam_3");
break;

case "tree_adam_3":
scr_black(black_no,-1);
scr_text("(Внезапно я услышал голос Безликого из наушника.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Послушайте.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("То, что Вы видите перед собой - это не Ваш друг.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Это лишь часть его личности.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Как я понимаю, это самое хорошее, что есть в нём.",noone,noone,"Mike",_faceless,"Faceless");
scr_No_option("tree_adam_4");
break;

case "tree_adam_4":
scr_black(black_black,-1);
obj_payer.faza[0]=4.3
obj_payer.phy_position_x=940;
obj_payer.phy_position_y=466;
scr_text("Что?",noone,_mike,"Mike",noone,"Faceless");
scr_text("По одной из теорий по строению личности эта часть человека называется ''Супер Эго'', или же ''Сверх-Я''",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Да, я слышала об этом.",noone,_anya,"Anya",noone,"Faceless");
scr_text("Там говорилось, что взаимодействие Сверх-Я и ID создаёт наше Эго.",noone,_anya,"Anya",noone,"Faceless");
scr_text("То есть наше ''Я''.",noone,_anya,"Anya",noone,"Faceless");
scr_text("А что такое ID?",noone,_mike,"Mike",noone,"Faceless");
scr_text("Примитивные желания человека. Его тёмные мысли, то, что не даёт нам достигнуть идеальную версию себя.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("(Так вот что не даёт мне делать зарядку по утрам...)",noone,_mike,"Mike",noone,"Faceless",0.6,"Font_think");
scr_text("Надеюсь, что Вы с ним не встретитесь.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("По другой теории личность человека делится на его разум его душу.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("То есть наши эмоции, желания и наше мышление.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("Обе эти теории объединяет наличие в личности человека двух противоположностей.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("И их взаимодействия и создают ту личность, которую люди видят в реальности.",noone,noone,"Mike",_faceless,"Faceless");
scr_text("То есть, перед нами светлая сторона Адама?",noone,_anya,"Anya",noone,"Faceless");
scr_text("Типо, его душа?",noone,_mike,"Mike",noone,"Anya");
scr_No_option("tree_adam_5");
break;

case "tree_adam_5":
scr_black(black_no,1);
obj_payer.faza[0]=4.4

scr_text("Эй, с кем вы говорите?",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Ни с кем.",noone,_mike,"Mike",noone,"Adam1");
scr_text("Просто мысли в слух.",noone,_anya,"Anya",noone,"Adam1");
scr_text("М-м-м ясно.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("А кстати, как тебя зовут?",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Меня?",noone,_anya,"Anya",noone,"Adam1");
scr_text("Да. Я раньше тебя не видел...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Меня зовут Анна. Я твоя одноклассница.",noone,_anya,"Anya",noone,"Adam1");
scr_text("Одно-кто?",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Звучит как что-то взрослое...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Ну так ты уже давно в школу ходишь.",noone,_anya,"Anya",noone,"Adam1");
scr_text("Нет.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Я на дереве висю...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Ну... больше не висю...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Да, ну не это я имела ввиду!",noone,_anya,"Anya",noone,"Adam1");
/*
scr_text("Да и вообще, почему ты знаешь меня, но не знаешь Аню?",noone,_mike,"Mike",noone,"Adam1");
scr_text("...А?",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Ты... что, не помнишь?",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Не помню что?",noone,_mike,"Mike",noone,"Adam1");
scr_text("как мы играли вместе...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Что?",noone,_mike,"Mike",noone,"Adam1");
scr_No_option("tree_adam_6");
break;

case "tree_adam_6":
scr_black(black_no,-1.5);
scr_text("(Внезапно я услышал что-то...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("Хе-хе, догони меня!",noone,noone,noone,"Адам (юный)",noone);
scr_text("Нет, подожди!",noone,"Майк (юный)",noone,noone,noone);
scr_text("Я устал.",noone,"Майк (юный)",noone,noone,noone);
scr_text("хмфх, не беда.",noone,noone,noone,"Адам (юный)",noone);
scr_text("Тогда мы можем поиграть во что-нибудь более спокойное.",noone,noone,noone,"Адам (юный)",noone);
scr_text("Хорошо!",noone,"Майк (юный)",noone,noone,noone);
scr_text("Я знал, что ты согласишься!",noone,noone,noone,"Адам (юный)",noone);
scr_text("Ты же всё-таки мой лучший друг...",noone,noone,noone,"Адам (юный)",noone);
scr_text("*Крик в далеке*",noone,noone,noone,noone,noone);
scr_text("Ой, меня зовут.",noone,"Майк (юный)",noone,noone,noone);
scr_text("Ну... тогда пока (",noone,noone,noone,"Адам (юный)",noone);
scr_text("Хорошо, завтра увидимся!",noone,"Майк (юный)",noone,noone,noone);
scr_No_option("tree_adam_7");
break;

case "tree_adam_7":
scr_black(black_no,1.5);
scr_text("",noone,noone,"Mike",noone,"Adam1");
scr_text("...?",noone,_mike,"Mike",noone,"Adam1");
scr_text("Ты правда забыл об этом?",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("(...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Даже не знаю, что сказать...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Адам - это мой бывший друг?)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Я совершенно забыл об этом!)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Это было так давно...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Он был для меня просто знакомым...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Просто человек, о котором ты забудешь через несколько лет...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(А тут он назвал меня... лучшим другом?)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Я чувствую себя плохо...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("Извини... что не вспомнил этого...",noone,_mike,"Mike",noone,"Adam1");
scr_text("Хех, ничего страшного.",noone,noone,"Mike",_adam_soul,"Adam1");
*/
scr_text("Кстати, а ты не видел тут парня в зелёной кофте?",noone,_anya,"Anya",noone,"Adam1")
scr_text("Хм...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Ну тут недавно проходил...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Такой, с короткими потрёпанными волосами, в зелёной кофте...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("И звучал он так печально...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Хм?",noone,_mike,"Mike",noone,"Adam1");
scr_text("Это мог быть Адам.",noone,_anya,"Anya",noone,"Adam1");
scr_text("Что?",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Н-нет... Адам ведь не может быть таким...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Он... (я?) ведь совсем другой...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Или...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text(" ([emoji1,0,0];)",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Это правда был он?",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Ой...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Ой-ёй-ёй...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Что не так?",noone,_mike,"Mike",noone,"Adam1");
scr_text("... просто...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Он звучал так взросло...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Я испугался и отправил его в лес.",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Лес?",noone,_anya,"Anya",noone,"Adam1");
scr_text("Да. Он там, недалеко.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Там живут все взрослые.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Нам туда ходить нельзя.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_No_option("tree_adam_7.1");
break;

case "tree_adam_7.1":
obj_payer.faza[9]=1056;
obj_payer.faza[10]="anna_right";
obj_payer.faza[11]=1.2;
scr_text("Майк, пошли туда.",noone,_anya,"Anya",noone,"Adam1");
scr_text("Стой!",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Я слышал, что там очень опасно...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Но если Адам там...",noone,_mike,"Mike",noone,"Adam1");
scr_text("Мы должны помочь ему!",noone,_mike,"Mike",noone,"Adam1");
scr_text("Ох... ... ...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Почему так сложно?",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Извините, но я не могу позволить вам пройти туда...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_No_option("tree_adam_7.2");
break;

case "tree_adam_7.2":
//obj_payer.faza[9]=1052;
//obj_payer.faza[10]="anna_left";
//obj_payer.faza[11]=1.4;
obj_payer.faza[10]="anna_get_tapes";
inst_3A742D66_1.x=1052;
scr_text("?!",noone,_anya,"Anya",noone,"Adam1");
scr_text("Эй!",noone,_anya,"Anya",noone,"Adam1");
scr_text("Отпусти меня!",noone,_anya,"Anya",noone,"Adam1");
scr_text("Для начала попробуйте победить эти ленты.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Если вы докажете, что способны постоять за себя... Только тогда я позволю вам пройти.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Майк, не дай этим лентам одолеть тебя!",noone,_anya,"Anya",noone,"Adam1");
scr_text("Я...",noone,_mike,"Mike",noone,"Adam1");
scr_text("Я сделаю всё возможное ради этого.",noone,_mike,"Mike",noone,"Adam1");
scr_text("(Найдя случайную ветку в траве, я приготовился к битве)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_No_option("tree_adam_7.3");
break;

case "tree_adam_7.3":
inst_1EC0B2D6.x=obj_payer.x
inst_1EC0B2D6.y=obj_payer.y+10
//scr_text("Я... я сделаю всё возможное ради этого.",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_main","end");
scr_No_text();
break;

case "first_fight_1":
		obj_payer._talk_turn=1;
		obj_payer._talk_what="first_fight_2"
scr_text("Ой, Майк, извини! Эти ленты... Они сами аткауют!",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main");
scr_text("Не волнуйтесь. Эти ленты не смогут сделать слишком больно.",noone,noone,"Mike",_adam_soul,"Adam1",0.6,"Font_main");
scr_text("(Что мне делать?)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Думаю, стоит попробовать атаковать эти ленты в ответ...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think","end");
		break;
		
case "first_fight_2":
		obj_payer._talk_turn=2;
		obj_payer._talk_what="first_fight_3"
		if obj_cursor.cursor!=3
		{
scr_text("(Чёрт, мне нужно придумать, как защитить себя от этих атак.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Помню, там что-то говорили про некий ''щит энергии души''...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Думаю, сейчас самое время это проверить!)",noone,_mike,"Mike",noone,noone,0.6,"Font_think","end");
		}
		else
		{
scr_text("(Чёрт! Пытаясь замахнуться я попал этой веткой себе по лицу)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Такими темпами мне не победить...",noone,_mike,"Mike",noone,noone,0.6,"Font_main");
scr_text("(Нужно найти хоть какой-то способ защиты)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Помню, там что-то говорили про некий ''щит энергии души''...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Думаю, сейчас самое время это проверить!)",noone,_mike,"Mike",noone,noone,0.6,"Font_think","end");
		}
		break;
		
case "first_fight_3":
		obj_payer._talk_turn=3;
		obj_payer._talk_what="first_fight_4"
scr_text("(Господи, эти ленты всё продолжают и продолжают атаковать)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Мне нужно придумать, как востонавть себе здоровье!)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Хм, вроде бы в моём кармане осталось несколько конфет...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think","end");
		break;
		
case "first_fight_4":

var _kolvo = function (element, index)
{
    return element.num=2
}

var passed = array_filter(obj_inventory.inventory, _kolvo);

if array_length(passed)<=3
{

	if obj_cursor.cursor=3
	{
scr_text("Что ж... Со всеми имеющимися возможностями я должен закончить эту битву.",noone,_mike,"Mike",noone,noone,0.6,"Font_main");
scr_text("Давай, у тебя получится!",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
		}
		else
		{
scr_text("Я понимаю, что ты хотел дать мне конфету, но эти ленты просто украли её!",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main");
scr_text("Тебе нужно лучше продумывать свои дейтсвия. Только так ты сможешь победить.",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main");
scr_text("Давай, я верю в тебя!",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
		}
	}
	else
		if obj_cursor.cursor=3
	{
scr_text("(Блин, этот рисунок был настолько прикольный, что я не смог не посмотреть на него...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Мне нужно собраться, чтоб победить в этой битве!",noone,_mike,"Mike",noone,noone,0.6,"Font_main");
scr_text("Давай, у тебя получится!",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
	}
	else
	{
scr_text("Эм... мне кажется, что сейчас не лучшее время пытаться показать мне рисунки...",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main");
scr_text("Тебе нужно лучше продумывать свои дейтсвия. Только так ты сможешь победить.",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main");
scr_text("Давай, я верю в тебя!",noone,noone,"Mike",_anya,"Anya",0.6,"Font_main","end");
	}
		break;

case "tree_adam_7.4":
obj_payer.faza[0]=5
obj_payer.faza[10]="anna_left";
obj_payer.faza[9]=1052;
scr_text("Это... было достаточно хорошо.",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Ладно... идите.",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("хм...",noone,_anya,"Anya",noone,"Adam1");
scr_text("А можешь ли ты пойти с нами?",noone,_anya,"Anya",noone,"Adam1");
scr_text("Хух?",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Просто я думаю...",noone,_anya,"Anya",noone,"Adam1");
scr_text("Ты же способен взаимодействовать с этим миром гораздо лучше, чем мы...",noone,_anya,"Anya",noone,"Adam1");
scr_text("Мне кажется, что с тобой нам будет проще.",noone,_anya,"Anya",noone,"Adam1");
scr_text("Я...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("я не уверен...",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Видишь ли... я никогда не был в той части мира.",noone,noone,"Anya",_adam_soul,"Adam1");
scr_text("Но почему?",noone,_mike,"Mike",noone,"Adam1");
scr_text("Просто...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Там мир становится более страшным...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Более опасным...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Более взрослым...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Но... если я так необходим вам, то...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Просто... старайтесь не попадаться на глаза тамошним существам...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("*Адам присоединиться к команде!*",noone,noone,"Mike",noone,"Adam1");
scr_text("Ну, тогда пошли.",noone,_anya,"Anya",noone,"Adam1",0.6,"Font_main","end");
break;

case "tree_adam_8":
scr_black(black_no,-1.5);
scr_sound_sette(0,Sng_Dreamy_Shores,true,3);
scr_text("(Более опасный мир?)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Интересно, что он имел ввиду?)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_No_option("tree_adam_9");
break;

case "tree_adam_9":
scr_black(black_black,-1.5);
room_goto(room_forest);

scr_text("...",noone,noone,noone,noone,noone);
scr_No_option("tree_adam_10");
break;

case "tree_adam_10":
obj_payer.phy_position_x=20;
obj_payer.phy_position_y=256;
obj_payer.sprite_index=spgr_
obj_payer.depth=-9990
scr_black(black_no,1.5);
scr_text("(Холодный воздух прошёлся по моему телу.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Атмосфера здесь совсем другая...",noone,_mike,"Mike",noone,noone);
scr_text("(Неужто Адам и правда тут?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Все эти порушенные деревья...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Всё это ощущение страха...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Как будто я чувствую взгляд существ этого мира...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Адам даже не может смотреть вперёд, стоя боком к тропинке.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Адам... Он точно тут?...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("...",noone,_anya,"Anya",noone,"Adam1");
scr_text("Пока мы не исследуем это место до конца, мы не можем утверждать навернка...",noone,_anya,"Anya",noone,"Adam1");
scr_text("(Я осмотрелся)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(На одном из деревьев свисал ярко зелёный лист, намного живее чем всё вокргу)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("Что это?..",noone,_mike,"Mike",noone,"Adam1",0.6,);
scr_text("(Не подумав ни о чём, я прикоснулся к нему)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("?!",noone,_anya,"Anya",noone,"Adam1");
scr_text("(Внезапно этот лист распался на яркий свет, ослепивший меня и остальных)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_No_option("adam_flashback_0");
break;
case "adam_flashback_0":
scr_text("Что?",noone,_mike,"Mike",noone,noone,0.6,);
scr_text("(Перед своими глазами я увидел... себя?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Где это мы?",noone,noone,"Mike",_anya,"Anya");
scr_text("Подождите, Майк, это ты?",noone,noone,"Mike",_anya,"Anya");
scr_text("Но ты тут такой маленький!",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Это... сцена из прошлого?",noone,_mike,"Mike",noone,noone,0.6);
scr_text("...",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Ну где же он...",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Майк!",noone,noone,noone,"Адам (ребёнок)",noone,1);
scr_text("Извини, что заставил тебя так долго ждать.",noone,noone,noone,"Адам (ребёнок)",noone,0.8);
scr_text("Всё в порядке.",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Я слышал, что скоро ты покинешь наш город?",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Д-да, всё так и получаяется.",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Я не хотел тебя расстраивать, так что даже не знал как сказать об этом.",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Так что да...",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Не знаю, увидимя ли мы снова...",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Прости пожалйста!",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Адам...",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Я уверен, когда-нибудь мы обязательно встретимся ещё раз.",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("А- а если что-то произойдёт и я забуду про тебя?",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Мх...",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Вот, возьми это.",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Ленточка?",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Ты можешь обвязать её вокруг руки как браслет.",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("И смотря на него вспоминать меня!",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Это...",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("...спасибо.",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Когда мы снова встретимся, расскажешь что ты делал без меня?",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Хорошо.",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("...извини, наверное, мне уже пора идти.",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Мх... я буду скучать.",noone,_mike_kid,noone,noone,noone,0.6);
scr_text("Почему мы не можем просто-",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("Адам!",noone,noone,noone,"Голос издалека",noone,0.6);
scr_text("Ой...",noone,noone,noone,"Адам (ребёнок)",noone,0.6);
scr_text("...",noone,_mike_kid,noone,noone,noone,0.6);
scr_No_option("adam_flashback_1");
break;
case "adam_flashback_1":
scr_text("Это... правда было?",noone,noone,"Mike",_anya,"Anya");
scr_text("Да.",noone,_mike,"Mike",noone,"Anya",0.3);
scr_text("Теперь я это помню.",noone,_mike,"Mike",noone,"Anya",0.6);
scr_text("Адам и мой друг из раннего детсва - реально один и тот же человек.",noone,_mike,"Mike",noone,"Anya",0.6);
scr_text("(Теперь я чувствую себя хреново...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(Адам явно был так рад вновь увидеть меня, но я просто его не узнал.)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("Сейчас же... Адам как будто совершено другой человек.",noone,_mike,"Mike",noone,"Anya",0.6);
scr_text("(Но что если... именно из-за меня Адам сейчас тут...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_text("(Из-за того, что я не узнал его...)",noone,_mike,"Mike",noone,"Anya",0.6,"Font_think");
scr_No_option("tree_adam_11");
break
case "adam_scare_0":
scr_black(black_no,-1);
scr_text("Этот голос...",noone,_anya,"Anya",noone,noone);
scr_text("Это Адам?",noone,_anya,"Anya",noone,noone);
scr_text("Нет...",noone,noone,noone,_adam,"Adam");
scr_text("(Я снова упал на свою кровать.)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("Почему всё не может быть так же просто, как раньше?",noone,noone,noone,_adam,"Adam");
scr_text("У меня нет сил встречать новый день...",noone,noone,noone,_adam,"Adam");
scr_text("Каждый раз когда я включаю телевизор, новости становятся только хуже...",noone,noone,noone,_adam,"Adam");
scr_text("(Неужто мир и правда становится хуже с каждым днём?)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Или это я взрослею?)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("Взрослею...",noone,noone,noone,_adam,"Adam");
scr_text("Скорее уж просто продолжаю разлагаться.",noone,noone,noone,_adam,"Adam");
scr_text("Это... это просто не может быть реальностью.",noone,noone,noone,_adam,"Adam");
scr_text("(Я не хочу жить в такой реальности.)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Не хочу каждый день просыпаться в страхе за своё будущее)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Пока не повзрослею...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("...",noone,noone,noone,_adam,"Adam");
scr_text(" ...",noone,noone,noone,_adam,"Adam");
scr_text("...",noone,noone,noone);
/*
scr_text("(бесполезно...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("С каждым следующим днём...",noone,noone,noone,_adam,"Adam");
scr_text("Всё хуже и хуже.",noone,noone,noone,_adam,"Adam");
scr_text("(Я боюсь...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Боюсь, что окружающие скажут, если узнают все мои чувства...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("Я продолжаю врать.",noone,noone,noone,_adam,"Adam");
scr_text("Натягиваю улыбку на свой череп.",noone,noone,noone,_adam,"Adam");
scr_text("Связываю себя в оковы...",noone,noone,noone,_adam,"Adam");
scr_text("Что бы не случилось, я притворяюсь, как будто сейчас всё как раньше...",noone,noone,noone,_adam,"Adam");
scr_text("(Что у родителей нет проблем с деньгами...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Что нам не пришлось переехать из-за этого...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Что после переезда я не прекратил общаться со своим другом...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Как будто в том возрасте у нас уже был телефоны, дабы мы могли поделиться номерами...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("хе-хе...",noone,noone,noone,_adam,"Adam");
scr_text("Майк...",noone,noone,noone,_adam,"Adam");
scr_text("Он совершенно забыл обо мне...",noone,noone,noone,_adam,"Adam");
scr_text("Я так надеялся, что когда-нибудь всё будет как раньше...",noone,noone,noone,_adam,"Adam");
scr_text("Но теперь никакой надежды не осталось",noone,noone,noone,_adam,"Adam");
scr_text("Эх... если бы...",noone,noone,noone,_adam,"Adam");
scr_text("Если бы я смог попасть в другой мир...",noone,noone,noone,_adam,"Adam");
scr_text("Туда, где не надо было сталкиваться с этой реальностью...",noone,noone,noone,_adam,"Adam");
scr_text("Единственное место, где я бы нашёл счастье...",noone,noone,noone,_adam,"Adam");
scr_text("...",noone,noone,noone,_adam,"Adam");
scr_text("(Я лишь пытаюсь найти своё счастье...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("(Я не знаю, получается ли у меня...)",noone,noone,noone,_adam,"Adam",0.6,"Font_think");
scr_text("Возможно... я делаю только хуже...",noone,noone,noone,_adam,"Adam");
scr_text("хуже... самому себе...",noone,noone,noone,_adam,"Adam");*/
scr_No_option("adam_scare_1");
break;
case "adam_scare_1":
scr_black(black_no,1);
scr_text("...",noone,_mike,"Mike",noone,"Adam1");
scr_text("Что... это было?",noone,_mike,"Mike",noone,"Adam1");
scr_text("Как будто его воспоминание материализовалось прямо перед нами...",noone,noone,"Mike",_anya,"Anya");
scr_text("Воспоминание...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("Значит, это то, о чём он думал...",noone,noone,"Mike",_adam_soul,"Adam1");
scr_text("...",noone,_mike,"Mike",noone,"Adam1");
scr_text("(То, что он говорил...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Это прозвучало так...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Как будто это из-за меня Адам попал сюда...)",noone,_mike,"Mike",noone,"Adam1",0.6,"Font_think");
scr_text("(Это.. это не даёт мне покоя...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("tree_adam_11");
break;

case "tree_adam_11":
scr_black(black_no,-1);
obj_payer.depth=-9999
scr_text("(Я как будто выпал из своего окружения...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Остался один перед пустотой...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Это... моя вина...",noone,_mike,"Mike",noone,noone);
scr_text("Если бы не я, Адам не оказался бы тут...",noone,_mike,"Mike",noone,noone);
scr_text("Нам бы не пришлось рисковать, приходя сюда...",noone,_mike,"Mike",noone,noone);
scr_text("(И я остался один перед этим чувством...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Один.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Здесь нет ни мамы, ни папы, ни Маши...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Только я, и эта тьма...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("tree_adam_12");
break;

case "tree_adam_12":
scr_sound_sette(1,Sng_Shepard_tone,true,5);
scr_text("(Такое странное чувство...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Как будто я падаю в бездну)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(И как бы долго я не падал, я не достигну дна...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Вместо этого я буду тонуть в этой тьме.)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(И... Что будет дальше?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Поможет ли мне кто-либо?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Кто-нибудь...",noone,_mike,"Mike",noone,noone);
scr_text("Хоть кто-нибудь...",noone,_mike,"Mike",noone,noone);
scr_text("Пом...",noone,_mike,"Mike",noone,noone);
scr_text("...",noone,_mike,"Mike",noone,noone);
scr_text("(Гх, почему я не могу сказать это?)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("голова заболела...",noone,_mike,"Mike",noone,noone);
scr_text("(Я хочу, что бы мне помогли, но не могу сделать ничего дл этого...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Даже кричать не могу...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Я... никогда не мог признать этого...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Но...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Я боюсь одиночества.",noone,_mike,"Mike",noone,noone);
scr_text("Когда ты один, тебе никто не поможет.",noone,_mike,"Mike",noone,noone);
scr_text("Никто не утешит.",noone,_mike,"Mike",noone,noone);
scr_text("Никто не запомнит.",noone,_mike,"Mike",noone,noone);
scr_text("Никто не скажит, как ты нужен.",noone,_mike,"Mike",noone,noone);
scr_text("Никто не придёт на твои похороны...",noone,_mike,"Mike",noone,noone);
scr_text("Никто не будет скучать по тебе.",noone,_mike,"Mike",noone,noone);
scr_text("Никому ты не будешь нужен.",noone,_mike,"Mike",noone,noone);
scr_text("Не будешь нужен?...",noone,_mike,"Mike",noone,noone);
scr_text("Я...",noone,_mike,"Mike",noone,noone);
scr_text("...",noone,_mike,"Mike",noone,noone);
scr_text("Как бы всё было, если бы меня не существовало?",noone,_mike,"Mike",noone,noone);
scr_text("Наверное, Адам бы не попал в этот мир...",noone,_mike,"Mike",noone,noone);
scr_text("То есть... мир был бы лучше?",noone,_mike,"Mike",noone,noone);
scr_text("(Гх...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(Я стараюсь не думать, но это приносит только больше мыслей в мою голову...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Я... с трудом стою на ногах",noone,_mike,"Mike",noone,noone);
scr_text("(Нет... мне нельзя быть слабым...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("Я... должен держать себя в руках...",noone,_mike,"Mike",noone,noone);
scr_text("(Я попытался восстановить дыхание)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("tree_adam_13");
break;

case "tree_adam_13":
scr_sound_sette(0,Sng_Shepard_tone,true,5);
scr_text("(Притвориться, как будто всё в порядке...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_text("(нам нужно только найти Адама и всё будет хорошо...)",noone,_mike,"Mike",noone,noone,0.6,"Font_think");
scr_No_option("tree_adam_14");
break;

case "tree_adam_14":
scr_black(black_no,1);
scr_text("...",noone,_mike,"Mike",noone,noone);
scr_text("Это...",noone,_mike,"Mike",noone,noone);
scr_text("Просто ужасно...",noone,_mike,"Mike",noone,noone);
obj_payer.depth=-9990
scr_No_option("tree_adam_15");
break;

case "tree_adam_15":
scr_black(black_no,-0.5)
if obj_payer.skip_active==2
obj_payer.skip_active=0;
scr_text("На этом история внезапно обрывается.",noone,noone,noone,noone,noone);
scr_text("Сумли ли герои помочь Адаму?",noone,noone,noone,noone,noone);
scr_text("Чем всё закончится?",noone,noone,noone,noone,noone);
scr_text("Увы, я не могу ответить на эти вопросы прямо сейчас.",noone,noone,noone,noone,noone);
scr_text("Надеюсь, вы будете достаточно терпеливыми, чтоб дождаться следующей версии данной игры.",noone,noone,noone,noone,noone);
scr_text("Приято, что у неё есть игроки.",noone,noone,noone,noone,noone);
scr_text("Спасибо вам всем.",noone,noone,noone,noone,noone);
scr_No_option("game end");
break;




case "door_school":
scr_text("Дверь в наружу...",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
break;

case "door_school1":
obj_payer.x=740
	obj_payer.y=1100
room_goto(_Room2)
scr_No_text()
break;

case "door_school1.1":
obj_payer.x=100
obj_payer.y=305
room_goto(room_school)
scr_No_text()
break;

case "Machine":
scr_text("Это торговый автомат.",noone, _mike,"Mike",noone,noone,0.6);
scr_text("Я не взял с собой денег. А так бы купил что-нибудь вкусное...",noone,_mike,"Mike_sad",noone,noone,0.6,"Font_main","end");

break;

case "clock_brocke":

scr_text("Большие часы",noone,_mike,"Mike",0.6);
scr_text("Выглядят красиво, жаль что не работают",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
break;

case "Door_close":
scr_text("Закрыто.",noone,_mike,"Mike",noone,noone,0.6,"Font_main","end");
break;



		case "talk_end":
		scr_No_text()
		break;

		case "game end":
		game_end();
		break;

	}
	
}