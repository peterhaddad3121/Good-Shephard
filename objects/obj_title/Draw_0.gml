/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 032C2818
/// @DnDArgument : "font" "fnt_title"
/// @DnDSaveInfo : "font" "30a7f5de-3899-47fa-b08c-90703e4ee216"
draw_set_font(fnt_title);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 222C4EA9
/// @DnDArgument : "x" "room_width/1.5"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "caption" ""The Good Shepherd ""
draw_text(room_width/1.5, room_height/2, string("The Good Shepherd ") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7946EB48
/// @DnDArgument : "font" "fnt_enter"
/// @DnDSaveInfo : "font" "07c47383-14ba-476d-9347-9cce8c32d3ae"
draw_set_font(fnt_enter);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 53847C34
/// @DnDArgument : "x" "room_width/1.31"
/// @DnDArgument : "y" "room_height/1.8"
/// @DnDArgument : "caption" ""Press Enter ""
draw_text(room_width/1.31, room_height/1.8, string("Press Enter ") + "");