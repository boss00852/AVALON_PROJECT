/// @description fix button to point
with (close_bt)
{
	x = other.x + 600
	y = other.y + 22
	depth = other.depth-1
}

with (yes_bt)
{
	x = other.x + 309-150
	y = other.y + 500-10-60
	depth = other.depth-1
}
with (no_bt)
{
	x = other.x + 309+150
	y = other.y + 500-10-60
	depth = other.depth-1
}