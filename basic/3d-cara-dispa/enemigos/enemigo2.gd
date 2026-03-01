extends Spatial

#var pantallaHUDcarga = preload("res://2d-HUD/HUD.tscn")
var pantallaHUDcarga = preload("res://2d-hud/HUD.tscn")
var pantallaHUD

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Area_body_entered(body):
	print("entra",body)
	_go_en_carac()
#	_win_en_carac()
	pass # Replace with function body.
#		print(get_tree().reload_current_scene())

func _go_en_carac():
#	print(get_tree().reload_current_scene())
	pantallaHUD = pantallaHUDcarga.instance()
	add_child(pantallaHUD)
	pantallaHUD._animaGO()
	pantallaHUD.get_node("inicio-I").hide()

func _win_en_carac():
#	print(get_tree().reload_current_scene())
	pantallaHUD = pantallaHUDcarga.instance()
	add_child(pantallaHUD)
	pantallaHUD._animaWIN()
	pantallaHUD.get_node("inicio-I").hide()