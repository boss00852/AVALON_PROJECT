/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if instance_exists(close_bt)
{
	with(close_bt)
	{
	if clicked == true
	{
		//show_message("clicked")
		clicked = false
		other.message_status = 0
		//instance_destroy(other)
		
	}
	}
}

if instance_exists(yes_bt)
{
	with(yes_bt)
	{
	if clicked == true
	{
		clicked = false
		other.message_status = 1
		//instance_destroy(other)
		
	}
	}
}

if instance_exists(no_bt)
{
	with(no_bt)
	{
	if clicked == true
	{
		clicked = false
		other.message_status = 2
		//instance_destroy(other)
		
	}
	}
}