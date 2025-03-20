// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function visible_in_viewport(_view){
	if (point_in_rectangle(x, y, view_xview[_view], view_yview[_view], view_xview[_view] + view_wview[_view], view_yview[_view] + view_hview[_view])) return true;
	else return false;
}

function array_delete_ext(array, pos)
{
    /// @func array_delete_ext(array, pos)
    /// @arg array
    /// @arg pos
	
	//courtesy of FoxyOfJungle on the gamemaker forums

    var _array_lenght = array_length(array);
    if (_array_lenght > 1)
    {
        var _array_new = array_create(_array_lenght - 1);
        var j = 0;
        for (var i=0; i<_array_lenght; i++)
        {
            if (i == pos)
            {
                continue;
            }
            _array_new[j] = array[i];
            j += 1;
        }
        return _array_new;
    }
}

function array_all_ext(_array,_value){
	for (var i=0; i<array_length(_array); i++){
		if (_array[i]!=_value){
			return false;
		}
		if i==array_length(_array)-1{
			return true;
		}
	}
}