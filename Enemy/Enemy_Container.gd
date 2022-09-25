extends Node2D

onready var Enemy = load("res://Enemy/Enemy.tscn")

var time = 15
var upgrade = 0

func reset():
	time = 10


func _physics_process(_delta):
	if get_child_count() < upgrade:
		var enemy = Enemy.instance()
		enemy.position = Vector2(randf()*Global.VP.x, randf()*Global.VP.y)
		add_child(enemy)


func _on_Timer_timeout():
	time -= 1
	if time == 0:
		upgrade += 1
		reset()
