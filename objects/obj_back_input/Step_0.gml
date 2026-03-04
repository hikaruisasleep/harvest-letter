// ----------------------
// HANDLE BACKSPACE FIRST
// ----------------------
if (keyboard_check_pressed(vk_backspace))
{
    if (typed_count > 0)
    {
        typed_count -= 1;  // delete one typed character
    }
    return; // prevent further processing this frame
}



var key = keyboard_lastchar;

if (key != "")
{
    key = string_lower(key);

    // -------------------------------
    // IF TYPING HAS NOT STARTED YET:
    // Find which menu item matches the first typed letter
    // -------------------------------
    if (typed_count == 0)
    {
        for (var i = 0; i < array_length(menu_items); i++)
        {
            var first_letter = string_lower(string_char_at(menu_items[i].text,1));

            if (key == first_letter)
            {
                current_index = i + 1; // Switch to that item
                break;
            }
        }
    }

    // -------------------------------
    // Now type the currently selected item
    // -------------------------------
    var item = menu_items[current_index - 1];
    var target = string_lower(item.text);

    var expected = string_char_at(target, typed_count + 1);

    if (key == expected)
    {
        typed_count++;

        // If fully typed
        if (typed_count >= string_length(target))
        {
            item.action(); // run action
            typed_count = 0;
        }
    }
}
