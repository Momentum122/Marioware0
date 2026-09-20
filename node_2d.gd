extends Node2D

@onready var timer: RichTextLabel = $RichTextLabel
var time: float = 0.0

func _process(_delta: float) -> void:
	if timer:
		timer.text = str(max(0.0, snapped(time, 0.1)))

func Timer(start_time: float) -> void:
	time = start_time
	while time > 0.0:
		await get_tree().create_timer(0.1).timeout
		time -= 0.1
	time = 0.0
