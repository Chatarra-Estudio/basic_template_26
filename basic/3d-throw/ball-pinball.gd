extends RigidBody

# pinball
var alturaMuerteBola = -5  # altura muerte por caida bola
var pantallaHUDcarga = preload("res://2d-hud/HUD.tscn")
var pantallaHUD
var flagGO = false

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame
func _process(_delta):
#	Game Over por caida sin HUD:
	if global_transform.origin.y <  alturaMuerteBola :
#		print(get_node("CameraBase/Camera/hub/HUD").timeRun)
		throw_gameOVER()
#		print(get_tree().reload_current_scene(), " muerto por caida, gamo over")
		
func throw_gameOVER() :
	print("GameOver")
	flagGO = true
#	move = get_tree().reload_current_scene()
	pantallaHUD = pantallaHUDcarga.instance()
#	print(get_node("Camera"))
	add_child(pantallaHUD)
#	print(pantallaHUD.position.x)
#	pantallaHUD.position.x = -300
#	pantallaHUD.position.y = -400
	pantallaHUD._animaGO()