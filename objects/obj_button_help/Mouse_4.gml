/// @description Toggle the help menu

// Inherit the parent event
event_inherited();

if (instance_exists(obj_text_help)) {
	instance_destroy(obj_text_help);
} else {
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_text_help);
}