extends Control

@onready var start_button: Button = $VBoxContainer/"Start Button"
@onready var start_button_2: Button = $VBoxContainer/"Start Button2"
@onready var quit_button: Button = $VBoxContainer/"Quit Button"

func _ready() -> void:
	# Connect the button signals directly in code
	if start_button:
		start_button.pressed.connect(_on_start_button_pressed)

	if quit_button:
		quit_button.pressed.connect(_on_quit_button_pressed)

func _on_start_button_pressed() -> void:
	# Reset game tracking before starting
	Global.minigames_done = 0
	Global.lives = 3
	# Loads Minigame 1 (Garlic Collect)	
	get_tree().change_scene_to_file("res://minigame_1.tscn")

func _on_start_button_2_pressed() -> void:
	# Reset game tracking before starting
	Global.minigames_done = 0
	Global.lives = 3
	# Loads Minigame 2 (Garlic Clicker)
	get_tree().change_scene_to_file("res://minigame_2 .tscn")

func _on_quit_button_pressed() -> void:
	# Closes the game application
	get_tree().quit()
