extends CharacterBody2D

@export var speed: int = 50
@export var dash_speed: int = 300
@export var dash_duration: float = 0.5
@export var dash_cooldown: float = 5.0
@export var spotlight_scale_default: float = 0.2
@export var spotlight_scale_widened: float = 0.4
@export var torch_trigger_distance: float = 30.0
@export var player_hit: bool = false
@export var health: int = 5

var direction: Vector2 = Vector2.ZERO
var is_dashing: bool = false
var dash_timer: float = 0.0
var cooldown_timer: float = 0.0
var player_hit_movement_timer: float = 0.0

@onready var torch_position: Vector2 = Vector2.ZERO
@onready var point_light = $PointLight2D
@onready var animation_player: AnimatedSprite2D = $AnimatedSprite
@onready var Health_UI = $"../UI/Health/HBoxContainer"
@onready var walking_audio = $"../Sound/Walking"
@onready var slide_audio = $"../Sound/Slide"

func _ready():
	var torch_node = get_node("../Torch")  
	torch_position = torch_node.global_position
	point_light.texture_scale = spotlight_scale_default

func _process(delta):
	if cooldown_timer > 0:
		cooldown_timer -= delta
	else:
		if cooldown_timer < 0:
			cooldown_timer = 0  

	if player_hit_movement_timer > 0:
		player_hit_movement_timer -= delta
	else:
		if player_hit_movement_timer < 0:
			player_hit_movement_timer = 0  

	if player_hit:
		walking_audio.stop()
		slide_audio.stop()
		direction = Vector2.ZERO
		health -= 1
		if health in range(1, 5):
			var heart = Health_UI.get_node("Heart%d" % (health + 1))
			heart.visible = false
			animation_player.play("take_damage")
		elif health <= 0:
			# game over (health at 0) 
			# implement whatever needs to happen here 
			# bc idk what should happen lmao :(
			GameData.current_level = 0
			get_tree().change_scene_to_file("res://scenes/game_over_screen.tscn")
			pass

		player_hit_movement_timer = 1
		player_hit = false
	else:
		direction = Input.get_vector("left", "right", "up", "down")
	
	# Spotlight scaling logic
	var distance_to_torch = global_position.distance_to(torch_position)
	if distance_to_torch <= torch_trigger_distance:
		point_light.texture_scale = spotlight_scale_widened

func _physics_process(delta):
	# Disable movement and dashing if the player is hit
	if player_hit_movement_timer > 0:
		velocity = Vector2.ZERO
		move_and_slide()
		# Skip the rest of the logic
		return  

	var current_speed = speed

	# Handle dashing
	if Input.is_action_just_pressed("space") and cooldown_timer <= 0:
		slide_audio.play()
		if direction.x > 0:
			animation_player.flip_h = false
			animation_player.play("dash_right")
		elif direction.x < 0:
			animation_player.flip_h = true
			animation_player.play("dash_right")
		elif direction.y > 0:
			animation_player.play("dash_down")
		elif direction.y < 0:
			animation_player.play("dash_up")
		else:
			#animation_player.play("dash_generic")
			pass  
		is_dashing = true
		dash_timer = dash_duration
		cooldown_timer = dash_cooldown

	if is_dashing:
		walking_audio.stop()
		current_speed = dash_speed
		dash_timer -= delta
		if dash_timer <= 0:
			is_dashing = false
			animation_player.play("idle")

	# Move the character
	velocity = direction * current_speed
	move_and_slide()

	# Update animations if not dashing
	if not is_dashing:
		slide_audio.stop()
		if direction == Vector2.ZERO:
			animation_player.play("idle")
			walking_audio.stop()
		else: 
			if not walking_audio.playing :
				walking_audio.play()
			
			if direction.x > 0:
				animation_player.flip_h = false
				animation_player.play("walk_right")
			elif direction.x < 0:
				animation_player.flip_h = true
				animation_player.play("walk_right")
			elif direction.y > 0:
				animation_player.play("walk_down")
			elif direction.y < 0:
				animation_player.play("walk_up")

# Dash bar cooldown_timer
func get_cooldown_timer():
	return cooldown_timer
