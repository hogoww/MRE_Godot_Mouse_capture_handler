extends Camera3D

var mouse_pos = Vector2.ZERO
func _unhandled_input(event: InputEvent) -> void:	
	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && event.pressed:
		print("clicked")
		if mouse_pos == Vector2.ZERO:
			mouse_pos = get_viewport().get_mouse_position()
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			## Solution is comment previous line, and decomment next line
			# Input.call_deferred(&"set_mouse_mode",Input.MOUSE_MODE_CAPTURED)

	if event is InputEventMouseButton && event.button_index == MOUSE_BUTTON_LEFT && !event.pressed:
		print("unclicked")
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		Input.warp_mouse(mouse_pos)
		mouse_pos = Vector2.ZERO
