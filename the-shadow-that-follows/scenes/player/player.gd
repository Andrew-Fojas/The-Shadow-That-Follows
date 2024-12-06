extends CharacterBody2D

@export var speed: int = 50
@export var dash_speed: int = 400
@export var dash_duration: float = 0.2
@export var dash_cooldown: float = 5.0
@export var spotlight_scale_default: float = 0.2
@export var spotlight_scale_widened: float = 0.4
@export var torch_trigger_distance: float = 20.0

var direction: Vector2 = Vector2.ZERO
var is_dashing: bool = false
var dash_timer: float = 0.0
var cooldown_timer: float = 0.0

@onready var torch_position: Vector2 = Vector2.ZERO
@onready var point_light = $PointLight2D
@onready var animation_player = $Player2

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

	direction = Input.get_vector("left", "right", "up", "down")
	
	# Spotlight scaling logic
	var distance_to_torch = global_position.distance_to(torch_position)
	if distance_to_torch <= torch_trigger_distance:
		point_light.texture_scale = spotlight_scale_widened

func _physics_process(delta):
	var current_speed = speed
	
	# Handle dashing
	if Input.is_action_just_pressed("space") and cooldown_timer <= 0:
		is_dashing = true
		dash_timer = dash_duration
		cooldown_timer = dash_cooldown

	if is_dashing:
		current_speed = dash_speed
		dash_timer -= delta
		if dash_timer <= 0:
			is_dashing = false

	# Move the character
	velocity = direction * current_speed
	move_and_slide()

	# Update animations
	if direction == Vector2.ZERO:
		animation_player.play("idle")
	elif direction.x > 0:
		animation_player.flip_h = false
		animation_player.play("walk_right")
	elif direction.x < 0:
		animation_player.flip_h = true
		animation_player.play("walk_right")
	elif direction.y > 0:
		animation_player.play("walk_down")
	elif direction.y < 0:
		animation_player.play("walk_up")
