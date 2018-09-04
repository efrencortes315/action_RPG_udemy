///@arg value
///@arg target_array

var _value = argument0;
var _array = argument1;

var _array_length = array_length_1d(_array);

for(var f=0;f<_array_length;f++){
	if _value ==  _array[f] || object_is_ancestor(_value,_array[f]){
		return true;
	}
}
return false;