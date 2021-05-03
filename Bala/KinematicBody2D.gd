extends KinematicBody2D

# Velocidad a la que se moverá nuestro jugador
var speed = 250
var velocity = Vector2()

#	Captura de entradas de teclas para mover nuestro jugador
#	y disparar
func get_input():
	
	velocity = Vector2()
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
		
	if Input.is_action_just_pressed("ui_accept"):
		shoot()
	velocity = velocity.normalized() * speed

# Función que se activa durante el juego para usar las 
#	físicas definidas
func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
			
		
#	Función que crea nodos hijos instanciando las balas.
func shoot():
	var proyectil = load("res://Proyectil.tscn")
	var bullet = proyectil.instance()
	bullet.position = get_global_position()
	get_parent().add_child(bullet)
