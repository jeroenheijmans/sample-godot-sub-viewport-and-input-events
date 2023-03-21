extends StaticBody2D

func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		modulate = Color(1,1,0,1) if event.is_pressed() else Color(1,1,1,1)
