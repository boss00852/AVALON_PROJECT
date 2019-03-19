

var selected_list = ds_list_create()

with (button_parent)
{
selected = false	
}


var _num = instance_position_list(mouse_x, mouse_y, button_parent, selected_list, false);

if _num > 0
    {
		var deep_prior = ds_priority_create();
		
    for (var i = 0; i < _num; ++i;)
        {
        var _obj = ds_list_find_value(selected_list,i)
		ds_priority_add(deep_prior,_obj,_obj.depth)
        }
		
		
		with (ds_priority_find_min(deep_prior))
		{
		event_user(0)
		selected = true
		clicked = true
		}
		ds_priority_destroy(deep_prior)
	}
	
ds_list_destroy(selected_list);
