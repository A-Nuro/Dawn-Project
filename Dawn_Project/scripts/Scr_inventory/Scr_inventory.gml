global.items[0]=
{
namein:"",
num:0,
use_no_battle: false,
hp_change: 0,
sp_change: 0,
colvo:1,
activ: function(){}
}
global.items[1]=
{
namein:"Прикольный рисунок [no_no,0,0] Восстанавливает 10[nbsp]SP",
num:1,
use_no_battle: true,
hp_change: 0,
sp_change: 10,
colvo:-28,
activ: function(){use_skill_points(-10)}
}
global.items[2]=
{
namein:"Конфета [no_no,0,0][no_no,0,0] [no_no,0,0] Восстанавливает 30[nbsp]HP",
num:2,
use_no_battle: true,
hp_change: 30,
sp_change: 0,
colvo:1,
activ: function(){damage_unit(-30,true,true,true)}
}


function inv_search(root_object, item_type)
{
	for (var i = 0; i < INV_SLOTS; i ++)
	{
		if (root_object.inventory[i].num == item_type)
		{
			return(i);	
		}
	}
	return(-1);
}

function inv_add(root_obj, item_type)
{
	var _slot = inv_search(root_obj,-1);
	if (_slot != -1)
	{
		with (root_obj) 
		{
			inventory[_slot].num = item_type;
			inventory[_slot].namein = global.items[item_type].namein
			inventory[_slot].colvo = global.items[item_type].colvo
			inventory[_slot].activ = global.items[item_type].activ
			inventory[_slot].use_no_battle = global.items[item_type].use_no_battle
			inventory[_slot].hp_change = global.items[item_type].hp_change
			inventory[_slot].sp_change = global.items[item_type].sp_change
			


		}
		return true;
	}
	else return false;
}

function inv_swap(obj_from, slot_from ,obj_to, slot_to)
{
	var _item_from = obj_from.inventory[slot_from].num
	var _item_from1 = obj_from.inventory[slot_from].colvo
	var _item_from2 = obj_from.inventory[slot_from].activ
	var _item_from3 = obj_from.inventory[slot_from].namein
	var _item_from4 = obj_from.inventory[slot_from].use_no_battle
	var _item_from5 = obj_from.inventory[slot_from].hp_change
	var _item_from6 = obj_from.inventory[slot_from].sp_change

	obj_from.inventory[slot_from].num = obj_to.inventory[slot_to].num
	obj_from.inventory[slot_from].colvo = obj_to.inventory[slot_to].colvo
	obj_from.inventory[slot_from].activ = obj_to.inventory[slot_to].activ
	obj_from.inventory[slot_from].namein = obj_to.inventory[slot_to].namein
	obj_from.inventory[slot_from].use_no_battle = obj_to.inventory[slot_to].use_no_battle
	obj_from.inventory[slot_from].hp_change = obj_to.inventory[slot_to].hp_change
	obj_from.inventory[slot_from].sp_change = obj_to.inventory[slot_to].sp_change
	
	obj_to.inventory[slot_to].num = _item_from;
	obj_to.inventory[slot_to].colvo = _item_from1;
	obj_to.inventory[slot_to].activ = _item_from2;
	obj_to.inventory[slot_to].namein = _item_from3;
	obj_to.inventory[slot_to].use_no_battle = _item_from4;
	obj_to.inventory[slot_to].hp_change = _item_from5;
	obj_to.inventory[slot_to].sp_change = _item_from6;
}


function inv_remove(root_obj, item_type)
{
	var _slot = inv_search(root_obj,item_type);
	if obj_inventory.slot_drag==-1
	{
		if (_slot != -1)
		{
			with (root_obj) 
			{
				inventory[_slot].num = -1;
				inventory[_slot].namein = "";
				inventory[_slot].colvo = -1;
				inventory[_slot].activ = function(){}
				inventory[_slot].use_no_battle = false;
				inventory[_slot].hp_change = 0;
				inventory[_slot].sp_change = 0;
			}
			return true;
		}
		else return false;
	}
	else
	{
		if (_slot != -1)
		{
			with (root_obj) 
			{
				inventory[_slot].num = -1;
				inventory[_slot].namein = "";
				inventory[_slot].colvo = -1;
				inventory[_slot].activ = function(){}
				inventory[_slot].use_no_battle = false;
				inventory[_slot].hp_change = 0;
				inventory[_slot].sp_change = 0;
				inv_swap(root_obj,_slot,root_obj,slot_drag)
			}
			
			
			return true;
		}
		else return false;
	}
}

function inv_open_box()
{
inst_my_best_inv.inv_active=true;
inst_my_big_inv.inv_active_box = true;
}