extends KinematicBody2D

var speed = 250
var velocity = Vector2()



func get_input():
	# Detect up/down/left/right keystate and only move when pressed.
	velocity = Vector2()
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
		
	if Input.is_action_just_pressed("ui_accept"):
		shoot()
	velocity = velocity.normalized() * speed


func _physics_process(delta):
	get_input()
	move_and_collide(velocity * delta)
			
			
func shoot():
	var proyectil = load("res://Proyectil.tscn")
	var bullet = proyectil.instance()
	bullet.position = get_global_position()
	get_parent().add_child(bullet)
