extends Control


func _ready():
	pass


func _on_Play_pressed():
	var _score = get_tree().change_scene("res://Game.tscn")
