extends Node

@export var start_scene: PackedScene


func _ready() -> void:
	DebugLog.log_info(self, "ready")


func _start_button_pressed() -> void:
	if start_scene == null:
		var err_msg: String = "Start Scene is empty."
		push_error(err_msg)
		DebugLog.log_error(self, err_msg)
		var err_dialog := ErrorDialog.new(err_msg, self, _quit)
		return
	get_tree().change_scene_to_packed(start_scene)


func _quit_button_pressed() -> void:
	_quit()


func _quit() -> void:
	get_tree().quit()
