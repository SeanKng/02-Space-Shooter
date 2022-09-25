extends Node

var VP = Vector2.ZERO

var score = 0
var lives = 0
var ammo = 0

func _ready():

	pause_mode = Node.PAUSE_MODE_PROCESS
	randomize()
	#VP = get_viewport().size
	VP = Vector2(1250,1100)
	var _signal = get_tree().get_root().connect("size_changed", self, "_resize")
	reset()
	
func reset():
	score = 0
	lives = 5
	ammo = 30
	
func reset_ammo():
	ammo = 30

	
func _unhandled_input(_event):
	if Input.is_action_pressed("menu"):
		var Pause_Menu = get_node_or_null("/root/Game/UI/Pause_Menu")
		if Pause_Menu == null:
			get_tree().quit()
		else:
			if Pause_Menu.visible:
				Pause_Menu.hide()
			
			else:
				Pause_Menu.show()
			
			
func _resize():
	#VP = get_viewport().size	
	pass
	
func update_score(s):
	score += s
	var Score = get_node_or_null("/root/Game/UI/HUD/Score")
	if Score != null:
		Score.text = "Score: " + str(score)

func update_ammo(a):
	ammo += a
	var Ammo = get_node_or_null("/root/Game/UI/HUD/Ammo")
	if Ammo != null:
		Ammo.text = "Ammo: " + str(ammo)
		
		
func update_lives(l):
	lives += l
	if lives <= 0:
		var _score = get_tree().change_scene("res://UI/End_Game.tscn")
	var Lives = get_node_or_null("/root/Game/UI/HUD/Lives")
	if Lives != null:
		Lives.text = "Lives: " + str(lives)		
