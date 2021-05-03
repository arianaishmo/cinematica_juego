extends Node

var velocidad = 0

# En esta función se incrementan la velocidad inicial de las balas
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_A:
			velocidad += 0.5
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_B:
			velocidad -= 0.5


func _ready():
	pass 


