extends Area2D

var speed = 300

#var pantallaHUDcarga = preload("res://2d-HUD/HUD.tscn")
var pantallaHUDcarga = preload("res://2d-hud/HUD.tscn")
var pantallaHUD

func _process(delta):
	position.x -= speed * delta # Se mueve hacia la izquierda
	if position.x < -100: # Eliminar si sale de pantalla
		queue_free()

func _on_obstaculo_body_entered(body):
	print(body, " " , body.name)
#	print("muerto, reinicio, game over, ", get_tree().reload_current_scene())
	print("muerto, reinicio, game over, ", _go_en_carac())
	pass # Replace with function body.
	
func _go_en_carac():
#	print(get_tree().reload_current_scene())
	pantallaHUD = pantallaHUDcarga.instance()
	add_child(pantallaHUD)
	pantallaHUD._animaGO()
#	pantallaHUD.set_scale(Vector2(0.8, 0.8))
	pantallaHUD.set_position(Vector2(-50, -450))
	pantallaHUD.get_node("inicio-I").hide()