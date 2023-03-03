/// @description draw txtbox


// draw txtbox
draw_self();

// draw txt
draw_set_font(font_txtbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_ext_color(x, y, txt_show, line_height, txt_width, c_white, c_white, c_white, c_white, image_alpha);

