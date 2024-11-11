/// @description Manage Object

life -= 1;
move_wrap(true, true, 0);

if (life <= 0) {
	instance_destroy();
}