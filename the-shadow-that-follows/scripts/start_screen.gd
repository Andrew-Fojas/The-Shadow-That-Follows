extends Control


func _on_start_game_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")
	
	
func _on_quit_game_button_down() -> void:
	get_tree().quit()
