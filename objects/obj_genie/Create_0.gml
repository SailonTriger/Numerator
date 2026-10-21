
// Configurações da animação do gênio
ystart = y;
freq = random_range(1, 2);
squiggle_config(0.2);

// Configurações do meu diálogo
indice = 0;

meus_dialogos = [
    "Pense em um número de 0 a 100.",
    "Eu vou adivinhar o seu número",
    "Pensou?!",
	"O seu número é X."
];

margem_x = 40;
margem_y = 20;

// Cria a caixa de diálogo e manda o primeiro texto
dialogo = instance_create_layer(x + margem_x, y + margem_y, "dialog", obj_speech);
dialogo.dono = id;
dialogo.texto = meus_dialogos[indice];

// Função para avançar o diálogo
avanca_dialogo = function()
{
    var _limite = array_length(meus_dialogos) - 1;
    
    // Se já chegou no final, não faz nada
    if (indice >= _limite) return;
    
    indice++;
    
    if (indice > _limite) indice = _limite;
    
    dialogo.atualiza_texto(meus_dialogos[indice]);
};