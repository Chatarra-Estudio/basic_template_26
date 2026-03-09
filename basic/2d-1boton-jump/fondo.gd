extends Node2D

var speed = 300  # Velocidad de descenso

#func _ready():
#	print($".".position)

func _physics_process(delta):
#	position.y += speed * delta  # Mover la puerta hacia abajo
#	if position.y > get_viewport_rect().size.y:
#		position.y = 0
	position.x -= speed * delta  # Mover la puerta hacia la izquierda
	if position.x < -get_viewport_rect().size.x:
		position.x = get_viewport_rect().size.x