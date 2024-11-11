/// @description Destroy the rock

instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if (sprite_index == spr_rock_big) {
	sprite_index = spr_rock_small;
	instance_copy(true);
	x = x + 15;
	y = y + 15;
	
	speed += 1;
	obj_game.points += 25;

} else if (instance_number(obj_rock) < 12) {
	sprite_index = spr_rock_big;
	x = -100;
	obj_game.points += 50;
} else {
	obj_game.points += 50;
	instance_destroy();
}