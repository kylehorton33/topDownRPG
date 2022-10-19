extends Node

const Winner = preload("res://src/Winner.tscn")

var total_bats
var killed_bats

signal bat_killed

func _ready():
	var bats = get_bats()
	total_bats = bats.size()
	killed_bats = 0

func reset():
	killed_bats = 0	

func get_bats():
	return get_tree().get_nodes_in_group("enemies")
	
func check_win():
	if killed_bats >= total_bats:
		var winner = Winner.instance()
		get_tree().current_scene.add_child(winner)
