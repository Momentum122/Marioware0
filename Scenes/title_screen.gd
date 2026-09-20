extends Control

@onready var start_button: Button = $Start_Button
@onready var start_button_2: Button = $Start_Button2
@onready var quit_button: Button = $VBoxContainer/"Quit Button"



func _on_start_button_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 3
	get_tree().change_scene_to_file("res://minigame_1.tscn")

func _on_start_button_2_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 3
	get_tree().change_scene_to_file("res://minigame_2 .tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
