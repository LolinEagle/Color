#macro W 1366
#macro H 768
#macro I_W (W / 6)
#macro I_H (H / 3)

colour = [
	c_aqua,
	c_black,
	c_blue,
	c_dkgray,
	c_fuchsia,
	c_gray,
	c_green,
	c_lime,
	c_ltgray,
	c_maroon,
	c_navy,
	c_olive,
	c_orange,
	c_purple,
	c_red,
	// c_silver,
	c_teal,
	c_white,
	c_yellow
]

function dec_to_str(dec){
	if (dec == c_aqua) return "Aqua";
	if (dec == c_black) return "Black";
	if (dec == c_blue) return "Blue";
	if (dec == c_dkgray) return "Dkgray";
	if (dec == c_fuchsia) return "Fuchsia";
	if (dec == c_gray) return "Gray";
	if (dec == c_green) return "Green";
	if (dec == c_lime) return "Lime";
	if (dec == c_ltgray) return "Ltgray";
	if (dec == c_maroon) return "Maroon";
	if (dec == c_navy) return "Navy";
	if (dec == c_olive) return "Olive";
	if (dec == c_orange) return "Orange";
	if (dec == c_purple) return "Purple";
	if (dec == c_red) return "Red";
	if (dec == c_teal) return "Teal";
	if (dec == c_white) return "White";
	if (dec == c_yellow) return "Yellow";
	return "";
}

function dec_to_hex(dec, len = 2){
	if (dec < 0){
	    len = max(len, ceil(logn(16, 2 * abs(dec))));
	}

	var hex = "";
	var dig = "0123456789ABCDEF";

	while (len-- || dec){
	    hex = string_char_at(dig, (dec & $F) + 1) + hex;
	    dec = dec >> 4;
	}
	return hex;
}

array_sort(colour, true);
