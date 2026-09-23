
for (var z = 1; z < array_length(global.main_quests); z++) 
{
if global.main_quests[z].status==1 and (array_get_index(active_quests,global.main_quests[z])==0)
{
	active_quests=[global.main_quests[0]];
}
if global.main_quests[z].status==1 and array_get_index(active_quests,global.main_quests[z])==-1
{
	array_push(obj_quests.active_quests,global.main_quests[z])
}
if global.main_quests[z].status==2 and array_get_index(active_quests,global.main_quests[z])!=-1
{
	array_delete(obj_quests.active_quests,array_get_index(obj_quests.active_quests,global.main_quests[z]),1)
}
}