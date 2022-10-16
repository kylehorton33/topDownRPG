extends Node2D

onready var animate_sprite = $AnimatedSprite

func _ready():
	animate_sprite.frame = 0
	animate_sprite.play("animate")

func _on_AnimatedSprite_animation_finished():
	queue_free()
