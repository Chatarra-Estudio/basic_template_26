extends RigidBody

var fuerza_base = 10
var cargando = false
var energia = 0.0

func _ready():
	# Evita que la pelota caiga al empezar
	mode = RigidBody.MODE_STATIC 

func _process(delta):
	if Input.is_action_just_pressed("ui_select"): # Espacio
		_on_inicio_carga()
	
	if cargando:
		energia += delta * 15 # La fuerza aumenta mientras mantienes pulsado
		
	if Input.is_action_just_released("ui_select"):
		_on_lanzamiento()
	
	if global_transform.origin.y <  -5 :
#		print(get_parent().get_child(4).name)
#		print(get_parent().get_child(4)._animaGO())
#		print(get_tree().reload_current_scene(), " muerto por caida, gamo over")
		get_parent().get_child(4)._animaGO()

func lanzar():
	cargando = false
	mode = RigidBody.MODE_RIGID # Activamos las físicas
	
	# Calculamos la dirección (Hacia adelante y un poco hacia arriba)
	var direccion = -global_transform.basis.z + Vector3.UP 
	var impulso = direccion.normalized() * (fuerza_base + energia)
	
	apply_central_impulse(impulso)


#func _on_TextureButton_pressed():
#	print("Hola, presiona")
#	pass # Replace with function body.


func _on_TextureButton_button_up():
#	print("Hola, suelta")
	_on_lanzamiento()
	pass # Replace with function body.


func _on_TextureButton_button_down():
#	print("Hola, aprieta")
	_on_inicio_carga()
	pass # Replace with function body.
	
	# Lógica centralizada
func _on_inicio_carga():
	if mode == RigidBody.MODE_STATIC: # Solo si no se ha lanzado ya
		cargando = true
		energia = 0.0

func _on_lanzamiento():
	if cargando:
		cargando = false
		lanzar()

