


// sombra normal, sem tremilixxx
draw_set_alpha(0.25);
draw_sprite_ext(spr_genie_shadow, 0, x + 2, y + 2, image_xscale, image_yscale, image_angle, image_blend, 0.5);
draw_set_alpha(1);

// gênio com tremilixxx
squiggle_begin(); // começa o efeito
draw_self();      // desenha o gênio ali dentro
squiggle_end();   // termina