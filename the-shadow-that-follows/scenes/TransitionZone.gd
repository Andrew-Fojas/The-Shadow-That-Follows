extends Area2D

@export var next_scene: String  
var current_level: int = 1

func _on_body_entered(body):
	# Check if the Player entered the zone
	if body.name == "Player":  
		if next_scene and next_scene != "":
			get_tree().change_scene_to_file(next_scene)
		else:
			print("Error: 'next_scene' is not set or is invalid.")
