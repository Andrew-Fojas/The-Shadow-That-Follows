extends Node2D

@onready var player = $"../Player"
@onready var animation_player = $SpikeTrapAnimation

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	# When the player collides with the trap, signal player got hit
	if (body.name == "Player"):
		player.player_hit = true
		animation_player.play("spike_triggered")
