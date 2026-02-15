extends RigidBody

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
	
func _process(_delta):
##	Game Over por caida sin HUD:
##	Game Over por caida sin HUD:
	if global_transform.origin.y <  -30.0 :
##		print(get_node("CameraBase/Camera/hub/HUD").timeRun) <  alturaMuerteBola :
		print("bola muere", global_transform.origin.y)
		queue_free()