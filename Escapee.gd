extends KinematicBody2D

# Declare member variables here.
const UP = Vector2(0, -1)
const GRAVITY = 10

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	motion.y += GRAVITY
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -700
			motion.x = randi() % 20 + 50
	
	motion = move_and_slide(motion, UP)
	pass
