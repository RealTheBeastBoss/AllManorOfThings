var x_speed = InputCheck(INPUT_VERB.RIGHT) - InputCheck(INPUT_VERB.LEFT);
var y_speed = InputCheck(INPUT_VERB.DOWN) - InputCheck(INPUT_VERB.UP);

if (x_speed != 0 or y_speed != 0) and not oGame.is_paused {
	var dir = point_direction(0, 0, x_speed, y_speed);
	x += floor(lengthdir_x(2, dir));
	y += floor(lengthdir_y(2, dir));
}