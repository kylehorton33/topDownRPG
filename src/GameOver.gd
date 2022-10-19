extends CanvasLayer


func _on_Button_pressed():
	var _reload_error = get_tree().reload_current_scene()
