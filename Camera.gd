extends Camera

var last_position = Vector2()
var velocity = Vector2()

const speed = 0.2
const wheel_speed = 1.5

func _input(event):
	if event is InputEventMouseButton:
		var ev := event as InputEventMouseButton
		if ev.pressed:
			last_position = ev.position
		
		fov += (-1 if ev.button_index == BUTTON_WHEEL_UP else (
			1 if ev.button_index == BUTTON_WHEEL_DOWN else 0
			)) * wheel_speed

		velocity = Vector2.ZERO
	elif event is InputEventMouseMotion:
		velocity = (event.position - last_position) * speed
		translate(Vector3(-velocity.x, 0, -velocity.y))
		last_position = event.position
