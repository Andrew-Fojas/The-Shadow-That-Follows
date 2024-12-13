extends Node2D

@export var max_hearing_distance: float = 50.0  
@export var min_volume_db: float = -15.0  
@export var max_volume_db: float = 0.0

var player_pos: Vector2

@onready var torch_animation = $AnimatedSprite2D
@onready var player = get_parent().get_node("Player")
@onready var fire_audio = $"../Sound/Fire"

func _ready() -> void:
	torch_animation.play("flame")
	
func _physics_process(_delta: float) -> void:
	player_pos = player.position
	var distance = position.distance_to(player_pos)
	
	if distance <= max_hearing_distance:
		if not fire_audio.playing:
			fire_audio.play()
		
		# Convert distance to a 0-1 range and invert it (closer means louder)
		var volume_percent = 1.0 - (distance / max_hearing_distance)
		# Lerp between min and max volume
		var target_volume = lerp(min_volume_db, max_volume_db, volume_percent)
		
		fire_audio.volume_db = target_volume
	else:
		fire_audio.stop()
