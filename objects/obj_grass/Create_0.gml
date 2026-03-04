/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79EABF4B
/// @DnDInput : 3
/// @DnDArgument : "expr" "irandom_range(0, array_length(global.words)-1)"
/// @DnDArgument : "expr_1" "irandom_range(0, array_length(global.tasks)-1)"
/// @DnDArgument : "expr_2" "global.tasks[task_index]"
/// @DnDArgument : "var" "word_index"
/// @DnDArgument : "var_1" "task_index"
/// @DnDArgument : "var_2" "task"
word_index = irandom_range(0, array_length(global.words)-1);
task_index = irandom_range(0, array_length(global.tasks)-1);
task = global.tasks[task_index];

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5DA78FBF
/// @DnDArgument : "var" "push_index"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "array_push"
/// @DnDArgument : "arg" "obj_game.assigned_tasks, task"
var push_index = array_push(obj_game.assigned_tasks, task);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F75DB75
/// @DnDArgument : "expr" "array_length(obj_game.assigned_tasks) - 1"
/// @DnDArgument : "var" "task_position"
task_position = array_length(obj_game.assigned_tasks) - 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 59B06887
/// @DnDArgument : "code" "// Ambil array kata dari variabel global yang didefinisikan di obj_game.$(13_10)word_list = global.words; $(13_10)$(13_10)// Inisialisasi variabel kontrol$(13_10)word_index_current = 0; $(13_10)can_change_word = true; $(13_10)$(13_10)// Variabel ini yang harus digambar di Event Draw$(13_10)word_to_display = word_list[word_index_current];"
// Ambil array kata dari variabel global yang didefinisikan di obj_game.
word_list = global.words; 

// Inisialisasi variabel kontrol
word_index_current = 0; 
can_change_word = true; 

// Variabel ini yang harus digambar di Event Draw
word_to_display = word_list[word_index_current];