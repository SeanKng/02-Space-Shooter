extends Area2D


func _on_HP_UP_body_entered(body):
	if body.name == "Player":
		Global.update_lives(1)
		queue_free()
