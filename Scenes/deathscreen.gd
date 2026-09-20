extends Node2D

@onready var main_menu_button: Button = $VBoxContainer/Button2
@onready var play_again_button: Button = $VBoxContainer/Button

func _ready() -> void:

	if main_menu_button:
		main_menu_button.pressed.connect(_on_main_menu_pressed)
	if play_again_button:
		play_again_button.pressed.connect(_on_play_again_pressed)

func _on_main_menu_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 3
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
func _on_play_again_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 3
	if is_inside_tree():
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
	
