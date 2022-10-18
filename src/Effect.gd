extends AnimatedSprite

func _ready():
	var animation_finished_error = connect("animation_finished", self, "_on_animation_finished")
	if animation_finished_error:
		print(animation_finished_error)
	frame = 0
	play("animate")

func _on_animation_finished():
	queue_free()
