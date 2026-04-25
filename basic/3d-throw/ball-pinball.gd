extends RigidBody

## pinball
#var alturaMuerteBola = -8  # altura muerte por caida bola
var pantallaHUDcarga = preload("res://2d-hud/HUD.tscn")
var pantallaHUD
var flagGO = false


# Called when the node enters the scene tree for the first time.
#func _ready():
#	print(global_transform.origin.y)
#	pass # Replace with function body.
#
func _process(_delta):
##	Game Over por caida sin HUD:
##	Game Over por caida sin HUD:
	if (global_transform.origin.y < -30.0) and !flagGO:
#		print(global_transform.origin.y , -30.0)
		throw_gameOVER()
#		print(get_tree().reload_current_scene(), " muerto por caida, gamo over")
		
func throw_gameOVER() :
	if !flagGO:
##		#	move = get_tree().reload_current_scene()
		pantallaHUD = pantallaHUDcarga.instance()
###		print(get_node("Camera"))
		get_tree().root.add_child(pantallaHUD)
###		add_child(pantallaHUD)
###		print(pantallaHUD.position.x)
###		pantallaHUD.position.x = -300
##	#	pantallaHUD.position.y = -400
		pantallaHUD._animaWIN()
		pantallaHUD.get_node("inicio-I").hide()
###		reload_current_scene()
		print("GameOver")
	flagGO = true
