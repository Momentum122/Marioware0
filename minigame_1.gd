extends Node2D

var garlic_collected: int = 0 
var timer_end: bool = false 
var game_over: bool = false


func _on_garlic_collected() -> void:
	garlic_collected += 1
	print("Garlic collected! Total count is now: ", garlic_collected)

func _ready() -> void:
	print("Minigame Started!")
	
	for child in get_children():
		if child.has_signal("garlic_collected"):
			child.garlic_collected.connect(_on_garlic_collected)
			print("Connected signal for garlic: ", child.name)

	await get_tree().create_timer(13.0).timeout
	timer_end = true
	print("Timer finished!")

func _process(_delta: float) -> void:
	if game_over:
		return
	if garlic_collected >= 3:
		game_over = true
		print("WIN! Changing scene...")
		Global.minigames_done += 1
		
		if Global.minigames_done >= 3:
			get_tree().change_scene_to_file("res://Scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/done_screen.tscn")
			
	elif timer_end:
		game_over = true
		print("LOSE! Time ran out...")
		Global.lives -= 1
		
		if Global.lives <= 0:
			get_tree().change_scene_to_file("res://Scenes/deathscreen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/deathscreen.tscn")
