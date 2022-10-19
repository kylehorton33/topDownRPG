extends CanvasLayer

onready var game_control = get_tree().current_scene.get_node("/root/GameControl")

func _on_Button_pressed():
	var _reload_error = get_tree().reload_current_scene()
	game_control.reset()
