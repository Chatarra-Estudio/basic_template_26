extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var timeRun = 0 # contador de segundos
var Countdown = 5 # segundos, cuenta atrás

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("panel/countDown").hide()
	get_node("game").hide()
	get_node("win").hide()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Timer_timeout():
	timeRun += 1
	if timeRun == 1:
		get_node("inicio-I").hide()
		get_node("panel/countDown").show()
		get_node("panel/countDown").set_text("amigo")
	get_node("panel/countDown").set_text("T: " + str(Countdown - timeRun))
	
	if Countdown == timeRun:
		print("Anima Game Over por tiempo:  ", timeRun, " segundos. Cuenta atrás:  ",Countdown)
		_animaGO()
	pass # Replace with function body.

func _tiempo1s():
		# 1. Crear el nodo
		var timer = Timer.new()
		# 2. Configurarlo
		timer.wait_time = 2.0
		timer.one_shot = true # Para que solo ocurra una vez
		# 3. Conectar la señal "timeout" a una función de este script
		timer.connect("timeout", self, "_al_terminar_tiempo")
		# 4. Añadirlo a la escena y encenderlo
		add_child(timer)
		timer.start()

func _animaGO():
#		timeRun += 1
		get_node("game").show()
		_tiempo1s()

func _animaWIN():
		get_node("win").show()
		_tiempo1s()

#		yield(get_tree().create_timer(2.0), "timeout")#tempo,2 seg

func _al_terminar_tiempo():
#	print("Pasaron los 2 segundos: reinicio")
	print("muerto, reinicio, game over, ", Countdown, timeRun, get_tree().reload_current_scene())


