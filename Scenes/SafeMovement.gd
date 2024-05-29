extends StaticBody3D

const rotationSpeed := 4.0
var targetAngle = 0.0
var rotating
# Called when the node enters the scene tree for the first time.
func _ready():
	rotating = false
	pass # Replace with function body.


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		targetAngle = rotation_degrees.y + 90
		rotating = true;
	rotation_degrees.y = lerp(rotation_degrees.y,targetAngle, delta * rotationSpeed)

