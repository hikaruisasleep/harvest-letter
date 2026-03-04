// Menu options
menu_items = [
    {
        text: "BACK",
        x: 100,
        y: 950,
        action: function() { room_goto(main_screen); }
    }
];

// Which menu item the user is typing
current_index = 1;

// Progress for typing
typed_count = 0;

// Visual settings
highlight_padding = 20;
font_normal = fnt_popup;
font_bold = fnt_title_bold;
