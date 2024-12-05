extends Node2D

@onready var torch_animation = $AnimatedSprite2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	torch_animation.play("flame")

func _process(_delta: float) -> void:
	pass
