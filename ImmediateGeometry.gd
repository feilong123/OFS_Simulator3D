extends ImmediateGeometry

# The object whose path we want to track
var object

# The points of the path
var points = []

func _ready():
	# Find the object node
	object = get_node('/root/Root/Stroker')

func _process(delta):
	# Add the current position of the object to the points
	points.append(object.translation)

	# Clear the old path
	clear()

	# Begin drawing lines
	begin(Mesh.PRIMITIVE_LINE_STRIP)

	# Draw a line through all points
	for point in points:
		add_vertex(point)

	# End drawing lines
	end()
	
func clear_path():
	# Clear the points array
	points.clear()

	# Clear the lines of the ImmediateGeometry
	clear()
