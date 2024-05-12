extends Button

var geometryBottom

func _ready():
		geometryBottom = get_node('/root/Root/UI/LineBottom')
		connect("pressed", self, "_on_Button_pressed")  # 连接按钮的 pressed 信号

func _on_Button_pressed():
		if geometryBottom.visible:
			geometryBottom.visible = false  # 隐藏轨迹	
		else:
			geometryBottom.visible = true  # 显示轨迹	
		
