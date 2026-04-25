extends Area2D

var speed = 300

func _process(delta):
	position.x -= speed * delta # Se mueve hacia la izquierda
	if position.x < -100: # Eliminar si sale de pantalla
		queue_free()

func _on_obstaculo_body_entered(body):
	print(body, " " , body.name)
	print("muerto, reinicio, game over, ", get_tree().reload_current_scene())
	pass # Replace with function body.
