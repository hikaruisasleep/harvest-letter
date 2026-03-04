/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78E03269
/// @DnDArgument : "expr" "global.jam_sekarang >= 18 || global.jam_sekarang < 6"
if(global.jam_sekarang >= 18 || global.jam_sekarang < 6){	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 55B18D34
	/// @DnDParent : 78E03269
	/// @DnDArgument : "code" "layer_set_visible("Background", false); $(13_10)layer_set_visible("Backgrounds", true);"
	layer_set_visible("Background", false); 
	layer_set_visible("Backgrounds", true);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5FA833F6
else{	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 10559056
	/// @DnDParent : 5FA833F6
	/// @DnDArgument : "code" "layer_set_visible("Background", true); layer_set_visible("Backgrounds", false);"
	layer_set_visible("Background", true); layer_set_visible("Backgrounds", false);}