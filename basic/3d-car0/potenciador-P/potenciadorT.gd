extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var segunPot = 23

export var offset_position = Vector3(0, 2, 0)  # ajusta según tu juego
onready var animation_scene   # nombre de tu nodo hijo con la animación

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("souce").hide() 
	animation_scene = get_node("souce") # get animation
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(body):
	get_node("souce").show()

	get_parent().get_node("CarBase/Body/CameraBase/Camera/hub/HUD")._potenciadorT(segunPot)
	_attach_animation_to_car(body)
	pass # Replace with function body.

        
func _attach_animation_to_car(car):
	# 1. Guardar la posición mundial actual de la animación
#	print(animation_scene)
#	var global_pos = animation_scene.global_transform.origin
#	print(global_pos)
	# 2. Quitar el nodo de este padre (el potenciador)
	remove_child(animation_scene)
	
	# 3. Añadirlo como hijo del coche
	car.add_child(animation_scene)
	
	# 4. Posicionarlo encima del coche (coordenadas locales al coche)
	animation_scene.transform.origin = offset_position
	
	# 5. Eliminar el potenciador (ya no se necesita)
	yield(get_tree().create_timer(2.0), "timeout")
	animation_scene.queue_free()
	queue_free()
