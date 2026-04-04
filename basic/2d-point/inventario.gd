extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
#	global_nivel.inventario
	determinar_inventario()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func determinar_inventario():
	if global_nivel.inventario == 0 :
		get_node("runa1").hide()
		get_node("runa2").hide()
		get_node("runa3").hide()
		
	elif global_nivel.inventario ==1:
		get_node("runa1").show()
		animar_SCALA(get_node("runa1"))
		get_node("runa2").hide()
		get_node("runa3").hide()
		
		
	elif global_nivel.inventario ==2:
		get_node("runa1").show()
		get_node("runa2").show()
		animar_SCALA(get_node("runa2"))
		get_node("runa3").hide()
		
	elif global_nivel.inventario ==3:
		get_node("runa1").show()
		animar_SCALA(get_node("runa1"))
		get_node("runa2").show()
		animar_SCALA(get_node("runa2"))
		get_node("runa3").show()
		animar_SCALA(get_node("runa3"))
		

func limpiar_pantalla1():
	if global_nivel.nivel ==1:
		print("nivel 1 : todo", get_parent())
		print(get_parent().get_node("runa").queue_free())
	elif global_nivel.inventario ==2:
		print("nivel 2 : borrar")


func animar_SCALA(label):
	var tween = Tween.new()
	add_child(tween)
	label.scale = Vector2(1, 1)
	
	tween.interpolate_property(
		label, "scale",
		Vector2(1, 1),
		Vector2(1.3, 1.3),
		0.25,
		Tween.TRANS_BACK,
		Tween.EASE_OUT
	)
	
	tween.interpolate_property(
		label, "scale",
		Vector2(1.3, 1.3),
		Vector2(1, 1),
		0.25,
		Tween.TRANS_BACK,
		Tween.EASE_IN,
		0.25
	)
	tween.start()