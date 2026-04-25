extends Node2D

# Declare member variables here. Examples:
var contadorPuertas = 0
# var b = "text"
export var margen = 50


# Called when the node enters the scene tree for the first time.
func _ready():
# Inicializamos la semilla aleatoria para que no sea siempre el mismo patrón
	randomize()
	pass # Replace with function body.

func _on_Area2D_body_entered(body):
	# EL GIRO: El jugador crece y se vuelve más difícil de controlar
	body.scale *= 1.1 
#	Opcional: Aumentar la velocidad del movimiento que hicimos antes
	body.velocidad += 50

	contadorPuertas +=1
#	print("¡Nivel Completado!",contadorPuertas)
	teletransportar_meta()
	# CUIDADO padre buscando HUB tiempo
#	get_parent().get_child(2).timeRun = get_parent().get_child(2).timeRun + 15
	if contadorPuertas == 1:
		get_parent().get_child(3).Countdown = get_parent().get_child(3).Countdown + 5
	get_parent().get_child(3).Countdown = get_parent().get_child(3).Countdown + contadorPuertas
	print("¡Nivel Completado!",get_parent().get_child(3).Countdown)
	
func teletransportar_meta():
	# Obtenemos el tamaño de la pantalla actual
	var tamano_pantalla = get_viewport_rect().size
	
	# Generamos una posición X e Y aleatoria dentro del tamaño de la pantalla
	var nueva_x = rand_range(margen, tamano_pantalla.x - margen)
	var nueva_y = rand_range(margen, tamano_pantalla.y - margen)
	
	# Cambiamos la posición de la meta
	position = Vector2(nueva_x, nueva_y)
