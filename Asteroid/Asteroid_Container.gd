extends Node2D

onready var Asteroid = load("res://Asteroid/Asteroid.tscn")
var positions = [Vector2(100,100), Vector2(800,100), Vector2(500,500), Vector2(800,500)]

var time = 10
var upgrade = 1

func reset():
	time = 7

func _physics_process(_delta):
	if get_child_count() < upgrade:
		var asteroid = Asteroid.instance()
		asteroid.position = positions[randi() % positions.size()]
		add_child(asteroid)


func _on_Timer_timeout():
	time -= 1
	if time == 0:
		upgrade += 1
		reset()
	
	
	
