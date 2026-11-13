#macro INV_ARM_SLOTS 2
row_length = 1;
//inventory = array_create(INV_BOX_SLOTS,{num:-1})
inventory=[];

for (var i = 0; i < INV_ARM_SLOTS; i++){array_push(inventory,{namein:"",num:-1,colvo:-1,activ: function(){}, use_no_battle: false, armour: -1, hp_change: 0, sp_change: 0,})}

draw_delay = 4

depth=-9999;
inv_arm_who = 0;
inv_active = false;
inv_active_box = false;
inv_hover = -1;
slot_hover = -1;
inv_drag = -1;
slot_drag = -1;
item_drag = -1;