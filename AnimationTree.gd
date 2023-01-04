extends AnimationTree


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var forward = true
var c = 0

export(Curve) var curve

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	c += 1
	if (int(c) % 400) == 0:
		forward = !forward
	
	set("parameters/Blend2/blend_amount", self.curve.interpolate((c % 100)*0.01))
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
