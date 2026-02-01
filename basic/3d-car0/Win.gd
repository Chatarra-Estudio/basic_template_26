extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(_body):
	print("win")
#	cuidado con los hijos busca al coche
#	print(get_parent().name)
#	print(get_parent().get_child(0).name)
	print(get_parent().get_child(0).get_node("Body/CameraBase/Camera/hub/HUD")._animaWIN())

#	cuidado con los hijos busca a la pelota
#	print(get_parent().get_child(4)._animaWIN())
	pass # Replace with function body.
