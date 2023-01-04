extends Spatial

class_name MonkeyAnim

export var f = 0

signal monkey_clicked(name)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
# warning-ignore:unused_argument
func _process(delta):
	pass


func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		emit_signal("monkey_clicked", "hte")
