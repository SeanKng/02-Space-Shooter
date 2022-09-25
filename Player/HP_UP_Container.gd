extends Node2D


onready var HP_UP = load("res://Player/HP_UP.tscn")
var positions = [Vector2(100,100), Vector2(400,100), Vector2(250,250), Vector2(800,800)]



func _physics_process(_delta):
	if get_child_count() < 3:
		var hpup = HP_UP.instance()
		hpup.position = positions[randi() % positions.size()]
		add_child(hpup)
