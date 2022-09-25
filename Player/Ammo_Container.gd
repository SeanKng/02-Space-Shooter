extends Node2D


onready var Ammo = load("res://Player/Ammo.tscn")
var positions = [Vector2(100,100), Vector2(600,100), Vector2(300,300), Vector2(600,300)]



func _physics_process(_delta):
	if get_child_count() < 2:
		var ammo = Ammo.instance()
		ammo.position = positions[randi() % positions.size()]
		add_child(ammo)
