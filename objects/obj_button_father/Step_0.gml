//Checando o mouse
var _mouse_sobre = position_meeting(mouse_x, mouse_y, id);
var _mouse_click = mouse_check_button_pressed(mb_left);

//Efeito quando passar o mouse por cima
if (_mouse_sobre)
{
    tween(id, "image_xscale", scale_x_final, tween_animation.elastic, 30);
    tween(id, "image_yscale", scale_y_final, tween_animation.elastic, 30);

    //Efeito quando clicar
    if (_mouse_click)
    {
        tween(id, "image_xscale", scale_x_final * 2, tween_animation.elastic, 30);
        tween(id, "image_yscale", scale_y_final * 1.5, tween_animation.elastic, 30);

        //Rodando minha ação, eu não tenho ação, mas meus filhos terão!
        action();
    }
}
else
{
    tween(id, "image_xscale", scale_x, tween_animation.elastic, 20);
    tween(id, "image_yscale", scale_y, tween_animation.elastic, 20);
}