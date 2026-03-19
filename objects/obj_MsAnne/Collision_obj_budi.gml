/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 66300402
/// @DnDArgument : "expr" "!instance_exists(obj_Sellcarrot)"
if(!instance_exists(obj_Sellcarrot)){}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 77B22C2B
/// @DnDArgument : "xpos" "room_width /  2"
/// @DnDArgument : "ypos" "room_width /  2"
/// @DnDArgument : "objectid" "obj_Sellcarrot"
/// @DnDSaveInfo : "objectid" "obj_Sellcarrot"
instance_create_layer(room_width /  2, room_width /  2, "Instances", obj_Sellcarrot);