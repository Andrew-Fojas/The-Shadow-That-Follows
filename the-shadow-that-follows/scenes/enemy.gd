extends CharacterBody2D

@export var base_speed: int = 15  # Minimum speed when near the player
@export var max_speed: int = 50  # Maximum speed cap
@export var distance_scale: float = 0.1  # Scale for exponential growth
var player_pos: Vector2
var target_pos: Vector2

@onready var player = get_parent().get_node("Player")

func _physics_process(delta: float) -> void:
	player_pos = player.position
	target_pos = (player_pos - position).normalized()
	
	# Calculate speed based on exponential growth relative to distance
	var distance = position.distance_to(player_pos)
	var speed = (base_speed + exp(distance * distance_scale))/10
	
	# Cap speed to max_speed
	speed = clamp(speed, base_speed, max_speed)
	
	# Move towards the player
	velocity = target_pos * speed
	move_and_slide()
