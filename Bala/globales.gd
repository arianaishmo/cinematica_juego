extends Node

var velocidad = 0


func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_A:
			velocidad += 0.5
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_B:
			velocidad -= 0.5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
