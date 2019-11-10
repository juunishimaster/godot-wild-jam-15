extends KinematicBody2D

# Declare member variables here.
const UP = Vector2(0, -1)
const GRAVITY = 5

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	motion.y = GRAVITY
	
	#if is_on_floor():
	#	motion.y = 0
	
	motion = move_and_slide(motion, UP)
	pass
