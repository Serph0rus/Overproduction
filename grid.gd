extends Node2D

export(Color) var Colour : Color = Color(0.5, 0.5, 0.5)
export(int) var Size : int = int(32)
export(float) var Width : float = float(1)

onready var Camera : Camera2D = get_node("../CameraTarget/Camera2D")
onready var Viewport : Viewport = get_viewport()

func _process(delta):
	update()

func _draw():
	var Offset: Vector2 = Vector2(int((Camera.position.x - (Viewport.size.x / 2)) * Camera.zoom.x) % Size, int((Camera.position.y - (Viewport.size.y / 2)) * Camera.zoom.y) % Size)
	for i in range(0, floor(Viewport.size.x / Size)):
		var Step: = i * Size * Camera.zoom.x
		draw_line(Vector2(Offset.x + Step, 0), Vector2(Offset.x + Step, Viewport.size.y), Colour, Width)
	for i in range(0, floor(Viewport.size.y / Size)):
		var Step: = i * Size * Camera.zoom.y
		draw_line(Vector2(0, Offset.y + Step), Vector2(Viewport.size.x, Offset.y + Step), Colour, Width)
