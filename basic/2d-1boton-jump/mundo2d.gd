extends Node2D

# generador de obstáculos
# var a = 2
# var b = "text"
var obstaculo_scene = preload("res://2d-1boton-jump/obstaculo.tscn")

#func _on_Timer_timeout():
#    var obs = obstaculo_scene.instance()
#    obs.position = Vector2(1100, 500) # Ajusta según tu resolución
#    add_child(obs)


func _on_Timer_timeout():
	var obs = obstaculo_scene.instance()
	obs.position = Vector2(1100, 500) # Ajusta según tu resolución
	add_child(obs)
#	print("onsr")
	pass # Replace with function body.
