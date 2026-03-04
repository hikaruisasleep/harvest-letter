/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 085864AC
/// @DnDArgument : "xpos" "room_width/2"
/// @DnDArgument : "ypos" "room_height/2"
/// @DnDArgument : "objectid" "obj_carrot"
/// @DnDSaveInfo : "objectid" "obj_carrot"
instance_create_layer(room_width/2, room_height/2, "Instances", obj_carrot);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 24995B1F
/// @DnDArgument : "msg" ""carrot created""
show_debug_message(string("carrot created"));