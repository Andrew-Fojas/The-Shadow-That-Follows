extends Control

@onready var menu_music = $Sound/MenusMusic
@onready var button_hover: AudioStreamPlayer2D = $Sound/ButtonHover
@onready var camera_2d: Camera2D = $Camera2D


func _ready() -> void:
	menu_music.play()
	
func _on_start_game_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/story_screen.tscn")
	
	
func _on_start_game_mouse_entered() -> void:
	button_hover.play()
	
	
func _on_quit_game_button_down() -> void:
	get_tree().quit()


func _on_play_again_mouse_entered() -> void:
	button_hover.play()


func _on_quit_game_mouse_entered() -> void:
	button_hover.play()
