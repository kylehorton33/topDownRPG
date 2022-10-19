extends Node2D

const SignTip = preload("res://src/SignTip.tscn")

export var message = "Add message here"

onready var interaction_area = $InteractionArea

func _on_InteractionArea_body_entered(body):
	var sign_tip = SignTip.instance()
	get_tree().current_scene.add_child(sign_tip)
	sign_tip.set_label_text(message)
	sign_tip.start_timer(message.length() / 10)
