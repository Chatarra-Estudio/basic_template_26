extends Node2D

## Declare member variables here. Examples:
## var a = 2
## var b = "text"
#
## Called when the node enters the scene tree for the first time.
#func _ready():
##	var ruta = get_tree().current_scene.filename
## .right(5) saca los últimos 5 caracteres: "02.tscn"
## .left(2) de eso, saca: "02"
##	var numero = ruta.right(ruta.length() - 7).left(2)
##	print("invent ", global_nivel
#
#	pass # Replace with function body.
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass

func _on_Area2D_body_entered(_body):
	if global_nivel.inventario ==0:
		global_nivel.inventario = 1
#		print(get_parent().get_node("HUD")._potenciadorT(3*global_nivel.inventario))
		actualizarIvent()

	elif global_nivel.inventario ==1:
		global_nivel.inventario = 2
		actualizarIvent()
	elif global_nivel.inventario ==2:
		global_nivel.inventario = 3
		actualizarIvent()
		
		print("win por runa ", global_nivel.inventario , " invent ")
		
	pass # Replace with function body.
	
func actualizarIvent():
		get_parent().get_node("HUD")._potenciadorT(3*global_nivel.inventario)
		get_parent().get_node("inventario").determinar_inventario()
		queue_free()