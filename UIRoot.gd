extends Control


signal test()


# Called when the node enters the scene tree for the first time.
func _ready():
	$HTTPRequest.connect("request_completed", self, "_on_request_completed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	$HTTPRequest.request("http://www.mocky.io/v2/5185415ba171ea3a00704eed")
	emit_signal("test")
	
func _on_request_completed(result, response_code, headers, body):
	print(body.get_string_from_utf8())
