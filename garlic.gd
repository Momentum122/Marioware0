extends Node2D

signal garlic_collected

@onready var area_2d: Area2D = $Area2D

func _ready() -> void:

	if area_2d:
		area_2d.body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:

	if body.is_in_group("player") or body.name == "Player":
		hide()

		$Area2D/CollisionShape2D.set_deferred("disabled", true)
		print("Garlic picked up by player!")
		garlic_collected.emit()
@export var pickup_radius: float = 120.0 
