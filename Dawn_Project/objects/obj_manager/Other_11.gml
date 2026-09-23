

if layer_get_visible(base_ui) 
{
layer_set_visible(base_ui, false);
instance_deactivate_layer(base_ui);
}else{
layer_set_visible(base_ui, true);	
instance_activate_layer(base_ui);
}
