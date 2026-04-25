extends KinematicBody2D

export var velocidad = 300
var objetivo = Vector2.ZERO
var moviendose = false

func _ready():
	# Inicializamos el objetivo en la posición inicial para que no salga disparado
	objetivo = position

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			objetivo = get_global_mouse_position()
			moviendose = true
			# Girar el sprite
			get_node("Sprite").flip_h = objetivo.x < position.x

func _physics_process(_delta):
	if not moviendose:
		return
		
	# Calculamos la dirección y la distancia
	var direccion = (objetivo - position).normalized()
	var distancia = position.distance_to(objetivo)
	
	# Si estamos muy cerca del click, paramos (para evitar que vibre)
	if distancia < 5:
		moviendose = false
	else:
		# ¡ESTA ES LA MAGIA! move_and_slide maneja las colisiones automáticamente
		var mensaje
		mensaje = move_and_slide(direccion * velocidad)
		mensaje += mensaje