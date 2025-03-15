// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function visible_in_viewport(_view){
	if (point_in_rectangle(x, y, view_xview[_view], view_yview[_view], view_xview[_view] + view_wview[_view], view_yview[_view] + view_hview[_view])) return true;
	else return false;
}

