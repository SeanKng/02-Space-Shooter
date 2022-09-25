extends Area2D



func _on_Ammo_body_entered(body):
	if body.name == "Player":
		Global.update_ammo(30)
		queue_free()
