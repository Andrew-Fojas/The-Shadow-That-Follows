extends CharacterBody2D

@export var speed: int = 500
@export var spotlight_scale_default: float = 0.2
@export var spotlight_scale_widened: float = 0.4
@export var torch_trigger_distance: float = 20.0
var direction: Vector2 = Vector2.ZERO
@onready var torch_position: Vector2 = Vector2.ZERO
@onready var point_light = $PointLight2D

@onready var animation_player = $Player2

func _ready():
	var torch_node = get_node("../Torch")  # Adjust the path as needed
	torch_position = torch_node.global_position
	point_light.texture_scale = spotlight_scale_default

func _process(_delta):
	direction = Input.get_vector("left", "right", "up", "down")
	
	var distance_to_torch = global_position.distance_to(torch_position)
	if distance_to_torch <= torch_trigger_distance:
		point_light.texture_scale = spotlight_scale_widened

func _physics_process(_delta):
	velocity = direction * speed
	move_and_slide()
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

#func update_spotlight():
	#var distance_to_torch = global_position.distance_to(torch_position)
	#if distance_to_torch <= torch_trigger_distance:
		#point_light.texture_scale = spotlight_scale_near_torch
	#else:
		#point_light.texture_scale = spotlight_scale_default
