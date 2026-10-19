

draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_set_valign(fa_center);


var onda_y = sin(time + ordem * 0.8) * amplitude;

draw_set_alpha(0.3);
draw_set_colour(c_black);
squiggle_draw_text_transformed(x, y + onda_y, Titulo, escala_x, escala_y, 1)


draw_set_alpha(1);
draw_set_colour(cor);
squiggle_draw_text_transformed(x, y + onda_y, Titulo, escala_x, escala_y, 1)



draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


draw_set_font(-1);