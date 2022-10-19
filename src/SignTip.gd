extends CanvasLayer

onready var label = $VBoxContainer/ColorRect/Label
onready var timer = $Timer

func set_label_text(message):
	label.text = message

func start_timer(duration):
	timer.start(duration)

func _on_Timer_timeout():
	queue_free()
