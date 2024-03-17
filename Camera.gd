extends Camera2D

onready var CameraTarget: Camera2D = get_node(".")
export(float) var Speed = 1.0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_pressed("ui_up") && !Input.is_action_pressed("ui_down"):
		CameraTarget.move_local_y(Speed)
	if Input.is_action_pressed("ui_down") && !Input.is_action_pressed("ui_up"):
		CameraTarget.move_local_y(-1 * Speed)
	if Input.is_action_pressed("ui_left") && !Input.is_action_pressed("ui_right"):
		CameraTarget.move_local_x(Speed)
	if Input.is_action_pressed("ui_right") && !Input.is_action_pressed("ui_left"):
		CameraTarget.move_local_x(-1 * Speed)





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
