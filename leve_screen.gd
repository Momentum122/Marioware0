extends Node2D
@onready var garlic_container: HBoxContainer = $"Garlic Container"
@onready var garlic1 : TextureRect =$"Garlic Container/Garlic1"
@onready var garlic2 : TextureRect =$"Garlic Container/Garlic2"
@onready var garlic3 : TextureRect =$"Garlic Container/Garlic3"
@onready var level   : RichTextLabel =$Level
@onready var timer   : RichTextLabel =$Timer

var time

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await Timer(5.0)
	if Global.minigames_done < 3:
		Global.minigames_done = Global.minigames_done +1
		get_tree().change_scene_to_file("res://Scenes/minigame_") 
	else:
		get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")
func _process(delta: float) -> void:
	match Global.lives:
		2:
			garlic1.hide()
		1:  
			garlic1.hide()
			garlic2.hide()
		0:  
			garlic_container.hide()

			timer.text = str(time)
			level.text = "level" + str(Global.minigames_done)

func Timer(start_time: float):
	time = start_time

	while time > 0.0:
		await wait(0.1)
		time -= 0.1 
	return 
func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
