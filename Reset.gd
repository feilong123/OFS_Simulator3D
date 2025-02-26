extends Button

# Reference to the trackball camera node
var trackball_camera

func _ready():
	# Connect the button's pressed signal to the _on_button_pressed function
	connect("pressed", self, "_on_button_pressed")
	
	# Get the trackball camera node
	trackball_camera = get_node("/root/Root/TrackballCamera")

func _on_button_pressed():
	print("Button pressed")
	# 重置trackball_camera
	trackball_camera.reset_camera()
	
