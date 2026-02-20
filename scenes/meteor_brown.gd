extends AnimatableBody2D

@export var speed = 500.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Platform initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var movement = Vector2.ZERO 

	if Input.is_action_pressed("move_up"):
		movement.y -= speed * delta
	if Input.is_action_pressed("move_down"):
		movement.y += speed * delta
	if Input.is_action_pressed("move_left"):
		movement.x -= speed * delta
	if Input.is_action_pressed("move_right"):
		movement.x += speed * delta

	if movement != Vector2.ZERO:
		move_and_collide(movement)
