// efeito do Smigle
squiggle_begin();
// usando uma nova sombra minha 
draw_sprite_ext(spr_small_button_shadow, 0, x + 2, y + 2, image_xscale, image_yscale, image_angle, image_blend, image_alpha);


draw_self();
squiggle_end();

//Desenhando meu texto com sombra 
draw_set_font(fnt_subtitle);
draw_set_halign(1);
draw_set_valign(1);

//fazendo a Sombra
draw_set_colour(c_black);
draw_set_alpha(.3);
squiggle_draw_text_transformed(x + 2, y + 2, texto, image_xscale, image_yscale, image_angle);
draw_set_colour(cor);
draw_set_alpha(1);
squiggle_draw_text_transformed(x, y, texto, image_xscale, image_yscale, image_angle);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);