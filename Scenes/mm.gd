extends Button

func _on_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 3
	get_tree().change_scene_to_file("res://title_screen.tscn")
