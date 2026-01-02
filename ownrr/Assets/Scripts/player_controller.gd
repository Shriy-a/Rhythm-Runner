extends CharacterBody2D
class_name PlayerController

@export var speed = 10.0
@export var jump_power = 10.0
@onready var gabriela: AudioStreamPlayer = $Gabriela
var count = 0

var speed_multiplier = 30.0
var jump_multiplier = -30.0
var direction = 0
#const SPEED = 120.0
#const JUMP_VELOCITY = -200.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	direction = 1
	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		if count == 0:
			gabriela.play()
			count += 1
			if direction:
				velocity.x = direction * speed * speed_multiplier
			else:
				velocity.x = move_toward(velocity.x, 0, speed * speed_multiplier)
		else:	
			velocity.y = jump_multiplier * jump_power
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
		

	

	move_and_slide()
