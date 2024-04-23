extends Button

var stroker = null  # Stroker 节点的引用

func _ready():
		stroker = get_node("/root/Root/Stroker")  # 替换为你的 Stroker 节点的路径
		connect("pressed", self, "_on_Button_pressed")  # 连接按钮的 pressed 信号

func _on_Button_pressed():
		stroker.visible = false  # 隐藏 Stroker 节点
