extends Spatial

const SENSITIVITY = 8.5
const SMOOTHNESS = 10

onready var cam = $"Camera"
var camera_input: Vector2
var rotation_velocity: Vector2
var last_position = Vector2()
const wheel_speed = 1.5

var dragging = false

func _input(event):
	if event is InputEventMouseMotion:
		camera_input = event.relative
	if event is InputEventMouseButton:
		var ev := event as InputEventMouseButton
		dragging = ev.is_pressed()
		if ev.pressed:
			
			$Camera.fov += (-1 if ev.button_index == BUTTON_WHEEL_UP else (
			1 if ev.button_index == BUTTON_WHEEL_DOWN else 0
			)) * wheel_speed
	
		
func _process(delta):
	if dragging:
		rotation_velocity = rotation_velocity.linear_interpolate(camera_input * SENSITIVITY, delta*SMOOTHNESS)
		cam.rotate_x(-deg2rad(camera_input.y))
		rotate_y(-deg2rad(camera_input.x))
		
		cam.rotation_degrees.x = clamp(cam.rotation_degrees.x, -90, 90)
		camera_input = Vector2.ZERO
