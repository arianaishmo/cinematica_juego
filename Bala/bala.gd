extends KinematicBody2D

#	Se inicializan las variables para la trayectoria
#	de la bala
var velocidad = 0
var pos = Vector2()
var ang = 0
var g = 9.81
var t = 0

#	Del script globales.gd, toma la variable de velocidad, la cual se actualiza
#	durante la ejecución
func get_vel():
	velocidad = Globales.velocidad

#	Función que nos da la posición instantánea de la bala
func get_pos(delta):
	get_vel()
	t += delta
	pos = Vector2(velocidad * cos(ang * (PI /180)) * t, -(velocidad * sin(ang * (PI /180)) * t - 0.5 * g * t * t))


#	Se manda llamar la posición de la bala en el momento
func _physics_process(delta):
	get_pos(delta)
	
	# De pasar este límite, se libera la memoria.
	if pos.x > 1000:
		queue_free()
		
	var collision = move_and_collide(pos)

