extends Path


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var t := 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	t += delta
	$PathFollow.offset = t * 5
