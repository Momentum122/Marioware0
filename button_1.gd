extends TextureButton

func _on_pressed() -> void:
	hide()

	var main_node = owner
	if main_node and "buttons_pressed" in main_node:
		main_node.buttons_pressed += 1
		print("Button clicked! Total pressed: ", main_node.buttons_pressed)
	else:
		print("ERROR: Could not find buttons_pressed on root node!")


func _on_button_2_pressed() -> void:
	pass 
