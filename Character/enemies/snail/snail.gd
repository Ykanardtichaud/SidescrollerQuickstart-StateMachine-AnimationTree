extends CharacterBody2D

@onready var animation_tree : AnimationTree = $AnimationTree

const SPEED = 300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	animation_tree.active = true

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	
	

	# Get the input direction and handle the movement/deceleration.
#		# As good practice, you should replace UI actions with custom gameplay actions.
#		var direction = Input.get_axis("ui_left", "ui_right")
#		if direction:
#			velocity.x = direction * SPEED
#		else:
#			velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
