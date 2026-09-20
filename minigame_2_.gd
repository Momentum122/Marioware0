extends Node2D

var themed_timer_scene = preload("res://themedtimer.tscn")

var buttons_pressed := 0
var timer_end := false
var scene_changing := false

func _ready() -> void:
	print("Minigame started!")
	if themed_timer_scene:
		var themed_timer_instance = themed_timer_scene.instantiate()
		add_child(themed_timer_instance)
		await themed_timer_instance.Timer(7.0)
		timer_end = true
		print("Timer finished!")

func _process(_delta: float) -> void:
	if scene_changing:
		return
		
	if buttons_pressed >= 4:
		scene_changing = true
		print("WIN! Changing scene...")
		Global.minigames_done += 1
		if Global.minigames_done > 3:
			get_tree().change_scene_to_file("res://Scenes/done_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/deathscreen.tscn")
			
	elif timer_end:
		scene_changing = true
		print("LOSE! Time ran out. Changing scene...")
		Global.lives -= 1
		get_tree().change_scene_to_file("res://Scenes/deathscreen.tscn")
