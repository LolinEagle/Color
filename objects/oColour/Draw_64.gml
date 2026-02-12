var i = 0;

draw_set_font(fFont);
for (var iy = 0; iy < H; iy += I_H){
	for (var ix = 0; ix < W; ix += I_W){
		// Colour
		draw_set_colour(colour[i]);
		draw_rectangle(ix, iy, ix + I_W, iy + I_H, false);

		// Text
		draw_set_colour(colour[i] == c_black ? c_white : c_black);
		draw_set_valign(fa_top);
		draw_text(ix + 3, iy + 3, dec_to_str(colour[i]));
		draw_set_valign(fa_bottom);
		draw_text(
			ix + 3,
			iy - 3 + I_H,
			"#" +
				dec_to_hex(colour_get_red(colour[i])) +
				dec_to_hex(colour_get_green(colour[i])) +
				dec_to_hex(colour_get_blue(colour[i]))
		);
		i++;
	}
}
