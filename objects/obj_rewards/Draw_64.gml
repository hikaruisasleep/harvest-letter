/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 202D45D9
/// @DnDArgument : "color" "$FF02FF52"
draw_set_colour($FF02FF52 & $ffffff);
var l202D45D9_0=($FF02FF52 >> 24);
draw_set_alpha(l202D45D9_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4808BB8F
/// @DnDArgument : "valign" "fa_bottom"
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 488171B9
/// @DnDArgument : "font" "fnt_caption"
/// @DnDSaveInfo : "font" "fnt_caption"
draw_set_font(fnt_caption);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 30E7C56F
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "coin_add"
draw_text(x, y,  + string(coin_add));