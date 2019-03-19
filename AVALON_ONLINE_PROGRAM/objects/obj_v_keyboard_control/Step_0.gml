if keyboard_virtual_status()
    {
    kv_input_string = keyboard_string;
    }
	
if keyboard_check(vk_enter)
{
	keyboard_virtual_hide()
	instance_destroy(self)	
}

