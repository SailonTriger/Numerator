


if (dono != noone && instance_exists(dono)) {
    if (variable_instance_exists(dono, "pergunta_atual")) {
        if (texto != dono.pergunta_atual) {
            texto = dono.pergunta_atual;
            char = 0;
        }
    }
}

if (char < string_length(texto)) {
    char += 0.5;
    texto_atual = string_copy(texto, 1, floor(char));
}