extends Node

# Declare member variables here. Examples:
var nivel = 1
var inventario = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("inicio nivel: ", nivel, ", inicio inventario: ",inventario)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func resetear():
	nivel = 1
	inventario = 0
