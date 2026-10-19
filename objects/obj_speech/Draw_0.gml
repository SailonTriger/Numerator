
squiggle_begin();


draw_self();

squiggle_end();

draw_set_halign(0);
draw_set_valign(0);
draw_set_font(fnt_speech);

// Minha sombra
draw_set_colour(c_black);
draw_set_alpha(0.3);
squiggle_draw_text_ext_transformed(x + 32, y + 22 + 2, texto, 20, 120, image_xscale, image_yscale, image_angle);

// Meu texto
draw_set_colour(c_black);
draw_set_alpha(1);
squiggle_draw_text_ext_transformed(x + 32, y + 22, texto, 20, 120, image_xscale, image_yscale, image_angle);

draw_set_colour(c_white);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);