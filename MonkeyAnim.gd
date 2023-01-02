extends Spatial

class_name MonkeyAnim

export var f = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
# warning-ignore:unused_argument
func _process(delta):
	pass


func _on_Area_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		print("eplace with function body.")
