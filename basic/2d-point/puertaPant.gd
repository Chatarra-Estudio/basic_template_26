extends Node2D

#var pantalla02carga = preload("res://2d-point/main2D-02.tscn")
#var pantalla02
export(int) var numero_nivel = 1
var total_nivel = 3 #cuidado es el numero de pantallas que

# Called when the node enters the scene tree for the first time.
func _ready():
	var ruta = get_tree().current_scene.filename
# .right(5) saca los últimos 5 caracteres: "02.tscn"
# .left(2) de eso, saca: "02"
	var numero = ruta.right(ruta.length() - 7).left(2)
	numero_nivel = int(numero)
#	print("invent ", global_nivel.inventario)
	global_nivel.nivel = numero_nivel
#	print(numero)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area2D_body_exited(_body):
	# cuando esté en lado derecho hacia a aka te 
	if position.x > 500:
		numero_nivel += 1
		if numero_nivel > total_nivel:
				numero_nivel = total_nivel
#		get_tree().change_scene("res://2d-point/main2D-02.tscn")
		# Formateamos el texto: %02d convierte el 1 en "01"
		
#		print("pasarpantalla hacia alante",body, position)
		_cambiarpantalla()
	else:
		numero_nivel -= 1
		if numero_nivel < 1:
				numero_nivel = 1
		_cambiarpantalla()
		
#	pantallaHUD = pantallaHUDcarga.instance()
#	add_child(pantallaHUD)
#	pantallaHUD._animaGO()
#	pantallaHUD.get_node("inicio-I").hide()
	pass # Replace with function body.
	
	
func _cambiarpantalla():
	var ruta = "res://2d-point/main2D-%02d.tscn" % numero_nivel
#	print("ruta", ruta)
	print("reinicio ruta ", ruta, get_tree().change_scene(ruta))