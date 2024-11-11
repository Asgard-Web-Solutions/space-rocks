/// @description Control the ship

move_wrap(true, true, 0);



// Basic movement
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	motion_add(image_angle, 0.1);
	if (speed > speed_cap) {
		speed = speed_cap;
	}
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	image_angle += 4;
}

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	image_angle -= 4;
}

// Fire control
if (firing_cooldown_remaining > 0) {
	firing_cooldown_remaining --;
}

if ((firing_cooldown_remaining == 0) && (mouse_check_button_pressed(mb_left) || keyboard_check(vk_space))) {
	firing_cooldown_remaining = firing_cooldown_time;
	instance_create_layer(x, y, "Instances", obj_bullet);
}