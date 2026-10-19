

time += 0.08;

// criando efeitos ao colocar o mouse em cima

var _mouse_sobre = position_meeting(mouse_x, mouse_y, id)

if (_mouse_sobre){
	
	tween(id, "escala_x", 2, tween_animation.bounce, 30);
	tween(id, "escala_y", 2, tween_animation.bounce, 30);
	
}
else
{
	tween(id, "escala_x", 1.4, tween_animation.elastic, 30);
	tween(id, "escala_y", 1.4, tween_animation.elastic, 30);
	
}