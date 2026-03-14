draw_set_alpha(1);
draw_set_valign(fa_top); // Kunci alignment agar tidak goyang
draw_set_halign(fa_left);

for (var i = 0; i < array_length(menu_items); i++)
{
    var item = menu_items[i];
    var tx = item.x;
    var ty = item.y;
    var word = item.text;
    var is_current = (i == current_index - 1);

    // 1. Gambar Highlight Kotak
    if (is_current && typed_count > 0)
    {
        draw_set_font(fnt_title); // Gunakan font reguler untuk ukur lebar
        var tw = string_width(word);
        var th = string_height(word);

        draw_set_color(make_color_rgb(130, 90, 50));
        draw_roundrect(tx - 10, ty - 5, tx + tw + 10, ty + th + 5, false);
    }

    // 2. Gambar Teks (Typed & Rest)
    var typed_text = is_current ? string_copy(word, 1, typed_count) : "";
    var rest_text  = is_current ? string_delete(word, 1, typed_count) : word;

    // Bagian yang sudah diketik
    draw_set_font(fnt_title_bold);
    draw_set_color(c_white);
    draw_text(tx, ty, typed_text);

    // Bagian sisanya
    var offset = string_width(typed_text);
    draw_set_font(fnt_title);
    draw_text(tx + offset, ty, rest_text);
}