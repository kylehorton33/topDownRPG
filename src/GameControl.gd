extends Node

var total_bats
var killed_bats

signal bat_killed

func _ready():
	var bats = get_bats()
	total_bats = bats.size()
	killed_bats = 0
	
func get_bats():
	return get_tree().get_nodes_in_group("enemies")
