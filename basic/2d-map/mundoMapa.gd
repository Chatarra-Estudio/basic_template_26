extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("City-world").hide()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	var player = randi() % 6 + 1
	var enemy = randi() % 6 + 1
	get_node("ColorRect/Label").set_text("Your points: " + str(player) + ". Enemy points: " + str(enemy))
	if player > enemy:
		get_node("ColorRect/Label2").set_text("YOU CONQUERED WORLD")
		get_node("City-world").show()
	
	else:
		get_node("ColorRect/Label2").set_text("DEFEAT AGAINST WORLD")
#	yield(get_tree().create_timer(2.0), "timeout")
	get_node("Timer").start(1)
	pass # Replace with function body.


func _on_Timer_timeout():
	print("Reinicio: " , get_tree().reload_current_scene())
#	pass # Replace with function body.
