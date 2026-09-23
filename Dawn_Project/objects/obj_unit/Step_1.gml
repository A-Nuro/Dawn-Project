if instance_exists(obj_effects)
{
if place_meeting(x, y, obj_effects) and obj_effects.our!=id.our
{
layer_sequence_headpos(unit_sequence, hurt_start)
state = HURT;
}
}