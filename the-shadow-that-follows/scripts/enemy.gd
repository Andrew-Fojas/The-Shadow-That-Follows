extends CharacterBody2D

@export var base_speed: int = 20
@export var max_speed: int = 60
@export var distance_scale: float = 0.1
@export var attack_range: float = 50.0
@export var damage_range: float = 10.0 

var player_pos: Vector2
var target_pos: Vector2

@onready var player = get_parent().get_node("Player")
@onready var animation_enemy = $BossMonster

func _physics_process(_delta: float) -> void:
	player_pos = player.position
	target_pos = (player_pos - position).normalized()

	# Calculate speed based on exponential growth relative to distance
	var distance = position.distance_to(player_pos)
	var speed = (base_speed + exp(distance * distance_scale)) / 10
	# Cap speed to max_speed
	speed = clamp(speed, base_speed, max_speed)

	# Move towards the player
	velocity = target_pos * speed
	move_and_slide()
		
	# Flip animation based on direction
	if velocity.x != 0:
		animation_enemy.flip_h = velocity.x < 0

	# Check if the reaper is in the damage range
	if distance <= damage_range:
		animation_enemy.play("reaper_damage")
		player.player_hit = true
	elif distance <= attack_range:
		# Check if the reaper is close enough to attack
		animation_enemy.play("reaper_attack")
	else:
		# Reaper is running towards the player
		if velocity.length() > 0:
			animation_enemy.play("reaper_attack_running")
