/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(confirm_bt)
{
	with(confirm_bt)
	{
	if clicked == true
	{
		clicked = false
		  
		  instance_destroy(other)
		
	}
	}
}


if instance_exists(close_bt)
{
	with(close_bt)
	{
	if clicked == true
	{
		clicked = false
		instance_destroy(other)
		
	}
	}
}

