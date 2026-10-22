/// advinhando o número 

superior = 100;
inferior = 0;
numero = 50;
//sabendo se acertei

acertei = false;


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
	string($"O número é {numero}")
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
	if (acertei)
	{
		game_restart();
		return;
		
	}
    var _limite = array_length(meus_dialogos) - 1;
    
    // Se já chegou no final, não faz nada
    if (indice >= _limite) return;
    
    indice++;
	if (indice >= _limite)
	{
		indice = _limite;
		
		layer_set_visible("buttons", true)
		
	}
    
    if (indice > _limite) indice = _limite;
    
    dialogo.atualiza_texto(meus_dialogos[indice]);
};


// Quando o número for menor que o chute
menor = function()
{
	//verificando se já posso funcionar
	var _limite = array_length(meus_dialogos) - 1
	if(indice >= _limite && !acertei)
	{
		// definindo o limite maior
		superior = numero;
	
		// calculando  o novo chute
		numero = round((superior + inferior)/2);
	
		// Atualiza  o texto 
		var _txt = string($" Seu número é {numero}");
	
		dialogo.atualiza_texto(_txt);
	}
}

maior = function()
{
	//verificando se já posso funcionar
	var _limite = array_length(meus_dialogos) - 1
	if(indice >= _limite && !acertei)
	{
		// definindo o limite menor
		inferior = numero
	
		// calculando  novo chute
		numero = round((superior + inferior)/2);
	
		// atualiza texto
		var _txt = string($" Seu número é {numero}");
	
		dialogo.atualiza_texto(_txt);
	}
}

/// acertando
acertou = function()
{
	// verificando se já posso funcionar
	var _limite = array_length(meus_dialogos) - 1;
	
	if (indice >= _limite && !acertei)
	
	// reiniciando o jogo 
	dialogo.atualiza_texto("Eba, acertei!!! \n Avançar, reinicia o jogo.")
	
	/// avisando que acertei 
	acertei = true
}











