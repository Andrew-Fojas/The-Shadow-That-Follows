extends Node2D

@onready var game_music = $Sound/GameMusic


# Play music
func _ready() -> void:
	game_music.play()
