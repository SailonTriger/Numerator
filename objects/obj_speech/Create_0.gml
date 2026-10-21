

dono = noone;
texto = "";
texto_exibido = "";
char = 0;
velocidade_texto = 0.5;

atualiza_texto = function(_novo_texto)
{
    texto = _novo_texto;
    texto_exibido = "";
    char = 0;
}
// garante que não nasce esticada
image_xscale = 1;
image_yscale = 1;