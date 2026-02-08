extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

func _input_event(_camera: Camera3D, event: InputEvent, _event_position: Vector3, _normal: Vector3, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Clicked on ", self.to_string())
