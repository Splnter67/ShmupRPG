extends CharacterBody2D
@export var Speed = 300
@export var FocusSpeed = 200
var CurrentSpeed : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float):
	if(Input.is_action_pressed("Focus") == true):
		CurrentSpeed = FocusSpeed
	else:
		CurrentSpeed = Speed
	var HorizontalInput = Input.get_action_strength("right") - Input.get_action_strength("left")
	var VerticalInput = Input.get_action_strength("down") - Input.get_action_strength("up")
	velocity.x = HorizontalInput * CurrentSpeed * delta * 60
	velocity.y = VerticalInput * CurrentSpeed * delta * 60
	move_and_slide()
