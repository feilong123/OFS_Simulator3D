extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var stroker = null  # Stroker 节点的引用
var label = null  # Label 节点的引用

# Called when the node enters the scene tree for the first time.
func _ready():
	#pass # Replace with function body.
	stroker = get_node('/root/Root/Stroker')  # 替换为你的 Stroker 节点的路径
	label = get_node('/root/Root/UI/TwistLabel')  # 替换为你的 Label 节点的路径


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
		var rotation_degrees = stroker.rotation_degrees
		# 假设你想获取Y轴上的旋转度数
		var angle_y = rotation_degrees.y
		label.text = "Twist: " + str(int(angle_y)) + ""
