draw_set_alpha(1);
draw_set_color(c_white);

// Loop through all menu items
for (var i = 0; i < array_length(menu_items); i++)
{
    var item = menu_items[i];
    var tx = item.x;
    var ty = item.y;
    var word = item.text;

    var is_current = (i == current_index - 1);

    // Highlight only the one being typed
    if (is_current && typed_count > 0)
    {
        var tw = string_width(word);
        var th = string_height(word);

        draw_set_color(make_color_rgb(130, 90, 50));
        draw_roundrect(
            tx - highlight_padding,
            ty - highlight_padding,
            tx + tw + highlight_padding,
            ty + th + highlight_padding,
            false
        );
    }

    // Split typed vs remaining letters
    var typed_text = "";
    var rest_text = word;

    if (is_current)
    {
        typed_text = string_copy(word, 1, typed_count);
        rest_text  = string_delete(word, 1, typed_count);
    }

    // Draw typed text in bold
    draw_set_font(fnt_title_bold);
    draw_set_color(c_white);
    draw_text(tx, ty, typed_text);

    // Draw untyped text in regular font
    draw_set_font(fnt_title);
    draw_text(tx + string_width(typed_text), ty, rest_text);
}
