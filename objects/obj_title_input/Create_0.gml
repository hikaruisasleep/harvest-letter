// Menu options
menu_items = [
    {
        text: "NEW GAME",
        x: 1300,
        y: 550,
        action: function() { room_goto(game); }
    },
    {
        text: "LOAD SAVE",
        x: 1300,
        y: 650,
        action: function() { room_goto(load_screen); }
    },
    {
        text: "SETTINGS",
        x: 1310,
        y: 750,
        action: function() { room_goto(settings_screen); }
    },
    {
        text: "QUIT",
        x: 1360,
        y: 850,
        action: function() { game_end(); }
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
