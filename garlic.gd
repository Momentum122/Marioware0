extends Node2D

signal garlic_collected

@onready var area_2d: Area2D = $Area2D

func _ready() -> void:
	# Connect the Area2D's body_entered signal automatically
	if area_2d:
		area_2d.body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	# Check if the colliding node is the Player
	if body.is_in_group("player") or body.name == "Player":
		hide()
		# Disable collision so it doesn't trigger again while hidden
		$Area2D/CollisionShape2D.set_deferred("disabled", true)
		print("Garlic picked up by player!")
		garlic_collected.emit()
@export var pickup_radius: float = 120.0 # Increased radius to account for offset
