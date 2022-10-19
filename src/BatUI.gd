extends Control

onready var label = $HBoxContainer/Label
onready var game_control = get_tree().current_scene.get_node("/root/GameControl")

func _ready():
	update_label()
	game_control.connect("bat_killed", self, "on_bat_killed")

func update_label():
	label.text = str(game_control.killed_bats) + " / " + str(game_control.total_bats)

func on_bat_killed():
	game_control.killed_bats += 1
	update_label()
