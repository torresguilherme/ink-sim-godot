extends Camera

var speed = 10

func _ready():
	pass

func _process(delta):
	movement(delta)

func movement(delta):
	var movement = Vector3()
	if Input.is_action_pressed("front"):
		movement -= global_transform.basis.z
	if Input.is_action_pressed("back"):
		movement += global_transform.basis.z
	if Input.is_action_pressed("left"):
		movement -= global_transform.basis.x
	if Input.is_action_pressed("right"):
		movement += global_transform.basis.x
	
	translation += movement * speed * delta
