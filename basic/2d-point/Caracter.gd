extends KinematicBody2D

onready var tween = $Tween
export var velocidad = 300 # Pixeles por segundo

func _input(event):
	# Detecta clic izquierdo o toque
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			mover_a(event.position)

func mover_a(objetivo):
	# Calculamos el tiempo según la distancia para que la velocidad sea constante
	var distancia = position.distance_to(objetivo)
	var tiempo = distancia / velocidad
	
	# Detenemos cualquier movimiento previo
	tween.stop_all()
	
	# Animamos la propiedad "position" desde la actual hasta el clic
	tween.interpolate_property(self, "position", position, objetivo, tiempo, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	
	tween.start()
#	look_at(objetivo) #	esto para rotar hacia el clik
	get_node("Sprite").flip_h = objetivo.x < position.x  #	esto para rotar : espejo solo lateral