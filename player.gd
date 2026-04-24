extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -300


func _physics_process(_delta: float) -> void:
	var input_vector := Vector2.ZERO
	
	input_vector.x = Input.get_axis("Left", "Right")
	input_vector.y = Input.get_axis("up", "Down")
	
	if input_vector.length() > 0:
		input_vector = input_vector.normalized()
		velocity = input_vector * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()
