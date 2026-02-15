extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pantallaHUDcarga = preload("res://2d-hud/HUD.tscn")
var pantallaHUD


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(_body):
	print("win")
#	CUIDADO con los hijos busca al coche
#	print(get_node("Body/CameraBase/Camera/hub/HUD"))
#	print(get_parent().name)
#	print(get_parent().get_child(0).name)
#	get_parent().get_child(0).get_node("Body/CameraBase/Camera/hub/HUD")._animaWIN()
#	print(get_parent().get_child(0).get_node("Body/CameraBase/Camera/hub/HUD")._animaWIN())

#	CUIDADO con los hijos busca a la pelota
#	print(get_parent().get_child(4)._animaWIN())

#	CUIDADO con los hijos busca caracter 3d
#	CUIDADO NO hay hud, metemos had
	pantallaHUD = pantallaHUDcarga.instance()
	get_tree().root.add_child(pantallaHUD)
#	print(get_node("Camera"))
#	add_child(pantallaHUD)
#	print(pantallaHUD.position.x)
#	pantallaHUD.position.x = -300
#	pantallaHUD.position.y = -400
	pantallaHUD._animaWIN()
	pantallaHUD.get_node("inicio-I").hide()
	pass # Replace with function body.
