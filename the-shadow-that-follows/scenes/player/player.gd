extends CharacterBody2D

var direction: Vector2 = Vector2.ZERO
@export var speed: int = 500

func _process(_delta):
	direction = Input.get_vector("left", "right", "up", "down")
	
func _physics_process(_delta):
	velocity = direction * speed
	move_and_slide()
