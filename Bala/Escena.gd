extends Node2D

var pos = Vector2()

#	Función que permite controlar la posición de los
# 	blancos.
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_F:
			$RigidBody2D.position.x -=5
			$RigidBody2D2.position.x -=5
			$RigidBody2D3.position.x -=5
			
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_G:
			$RigidBody2D.position.x +=5
			$RigidBody2D2.position.x +=5
			$RigidBody2D3.position.x +=5
	
	
func _ready():
	pass		
#Imprime la velocidad inicial y la distancia de los blancos.
func _process(delta):
	$lbl_vel.text = "Velocidad inicial: " + str(Globales.velocidad)
	$lbl_pos.text = "Objetivo más cercano: " + str($RigidBody2D2.position.x)
	
	
