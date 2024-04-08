extends Camera

var mouse_sensitivity = 0.1
var current_rotation = Vector2()
var is_mouse_down = false
var target = null  # 目标物体，摄像机将围绕这个物体旋转

func _ready():
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		target = get_node("/root/Root/Stroker")  # 假设你有一个名为 "Target" 的节点作为目标物体

func _input(event):
		if event is InputEventMouseButton:
				if event.button_index == BUTTON_LEFT:
						is_mouse_down = event.pressed
		elif event is InputEventMouseMotion:
				if is_mouse_down:
						current_rotation.x = clamp(current_rotation.x - event.relative.y * mouse_sensitivity, -70, 70)
						current_rotation.y = current_rotation.y - event.relative.x * mouse_sensitivity

						var distance_to_target = self.global_transform.origin.distance_to(target.global_transform.origin)
						var rotation_quat = Quat(Vector3(0, 1, 0), deg2rad(current_rotation.y)) * Quat(Vector3(1, 0, 0), deg2rad(current_rotation.x))
						self.global_transform.origin = target.global_transform.origin + rotation_quat.xform(Vector3(0, 0, distance_to_target))
						self.look_at(target.global_transform.origin, Vector3.UP)
