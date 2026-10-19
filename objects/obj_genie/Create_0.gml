



ystart = y;
freq = random_range(1, 2);
squiggle_config(0.2);

pergunta_atual = "Quanto é 7 + 5?";

dialogo = instance_create_layer(x + 40, y + 20, "dialog", obj_speech);
dialogo.dono = id;
pergunta_atual = "Quanto é 7 + 5?";