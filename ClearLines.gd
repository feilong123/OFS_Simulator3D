extends Button

# The ImmediateGeometry whose lines we want to clear
var geometryBottom

func _ready():
	# Find the ImmediateGeometry node
	geometryBottom = get_node('/root/Root/UI/LineBottom')

	# Connect the button's pressed signal to the _on_button_pressed function
	connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
	print("Button pressed")
	# Clear the lines of the ImmediateGeometry
	geometryBottom.clear_path()
	print("Lines cleared")
