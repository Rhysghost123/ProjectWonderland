extends CharacterBody2D


const SPEED = 300
const JUMP_VELOCITY = -400
var can_trigger_action := false
var action_window_time := 0.3 # seconds
var action_timer := 0.0






#func _physics_process5(delta):
	if velocity.y >  and velocity.y < 0:
		action_timer 
	if is_on_floor() and (can_trigger_action):
		if Input.is_action_just_pressed("gravityjump"):
			velocity.y = JUMP_VELOCITY * 3
	print(velo)



func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity += 2 * get_gravity() * delta

	# Handle jump and gravity jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	elif Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY * 1.5
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)







		
