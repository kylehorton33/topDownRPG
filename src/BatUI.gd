extends Control

var total_bats
var killed_bats

onready var label = $HBoxContainer/Label

func _ready():
	var bats = get_bats()
	total_bats = bats.size()
	killed_bats = 0
	update_label()
	
func get_bats():
	return get_tree().get_nodes_in_group("enemies")

func update_label():
	label.text = str(killed_bats) + " / " + str(total_bats)
