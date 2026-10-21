


// balanço do gênio
var _tamanho = 20;
var _freq = 2;
var _val = (sin(_freq * get_timer() / 1000000 + 1) / 2);

y = ystart + (_tamanho * _val);

// faz a caixa acompanhar
if (instance_exists(dialogo)) {
    var margem_y = 20;
    dialogo.y = y + margem_y;
    dialogo.x = x + 70;
}
// Só avança se apertar Espaço
if (keyboard_check_pressed(vk_space)) {
    avanca_dialogo();
}