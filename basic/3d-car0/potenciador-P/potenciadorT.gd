extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var segunPot = 23

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(_body):
	get_parent().get_node("CarBase/Body/CameraBase/Camera/hub/HUD")._potenciadorT(segunPot)
	pass # Replace with function body.
