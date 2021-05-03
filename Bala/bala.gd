extends KinematicBody2D
#Cmabio

var velocidad = 0
var pos = Vector2()
var ac = 0
var ang = 0
var g = 9.81
var vy = sin(ang * (PI /180))
var t = 0

var example = preload("res://KinematicBody2D.gd")

func get_vel():
	velocidad = Globales.velocidad


func get_pos(delta):
	get_vel()
	t += delta
	pos = Vector2(velocidad * cos(ang * (PI /180)) * t, -(velocidad * sin(ang * (PI /180)) * t - 0.5 * g * t * t))

func _physics_process(delta):
	get_pos(delta)
	#print(pos)
	if pos.x > 1000:
		queue_free()
		
	var collision = move_and_collide(pos)



# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
