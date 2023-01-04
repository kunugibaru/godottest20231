extends WorldEnvironment


func dir(class_instance):
	var output = {}
	var methods = []
	for method in class_instance.get_method_list():
		methods.append(method.name)
	
	output["METHODS"] = methods
	
	var properties = []
	for prop in class_instance.get_property_list():
		if prop.type == 3:
			properties.append(prop.name)
	output["PROPERTIES"] = properties

	return output

func switch_texture(name):
	environment.background_sky.set_panorama(load("res://industrial_workshop_foundry_2k.hdr"))


func _on_Control2_test():
	JavaScript.get_interface("window").te("wooorld")


func _on_MonkeyAnim_monkey_clicked(name):
	switch_texture(name)


func _on_Area_input_event_poster(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		print(9777)
		JavaScript.eval('window.open("https://google.com", "_blank")')
