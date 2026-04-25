extends KinematicBody2D

var gravity = 1200
var jump_force = -600
var velocity = Vector2.ZERO

func _physics_process(delta):
	# Gravedad constante
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)

func jump():
	if is_on_floor():
		velocity.y = jump_force


func _on_TextureButton_pressed():
#	print("salta")
	jump()
	pass # Replace with function body.
