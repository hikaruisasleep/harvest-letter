/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 3E1C6037
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5077ADAE
/// @DnDInput : 8
/// @DnDArgument : "expr_1" ""plant""
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_4" "false"
/// @DnDArgument : "expr_5" "irandom_range(0, array_length(global.tutor_tasks)-1)"
/// @DnDArgument : "expr_6" "global.tutor_tasks[task_index]"
/// @DnDArgument : "expr_7" "false"
/// @DnDArgument : "var" "inventory"
/// @DnDArgument : "var_1" "word"
/// @DnDArgument : "var_2" "is_colliding"
/// @DnDArgument : "var_3" "stage"
/// @DnDArgument : "var_4" "is_watered"
/// @DnDArgument : "var_5" "task_index"
/// @DnDArgument : "var_6" "task"
/// @DnDArgument : "var_7" "completed"
inventory = 0;
word = "plant";
is_colliding = false;
stage = 0;
is_watered = false;
task_index = irandom_range(0, array_length(global.tutor_tasks)-1);
task = global.tutor_tasks[task_index];
completed = false;
plant_type = "";

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 17284908
/// @DnDArgument : "var" "push_index"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "array_push"
/// @DnDArgument : "arg" "obj_game.assigned_tasks, task"
var push_index = array_push(obj_game.assigned_tasks, task);
