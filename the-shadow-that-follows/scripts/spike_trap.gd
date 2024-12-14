extends Node2D

@onready var player = get_tree().current_scene.get_node("Player")
#$"../Player"
@onready var animation_player = $SpikeTrapAnimation
@onready var spike_audio = get_tree().current_scene.get_node("Sound/Spike")
#$"../Sound/Spike"

func _ready() -> void:
	animation_player.animation_finished.connect(_on_animation_finished)

func _on_area_2d_body_entered(body: Node2D) -> void:
	# When the player collides with the trap, signal player got hit
	if (body.name == "Player"):
		if not spike_audio.playing:
			spike_audio.play()
		player.player_hit = true
		animation_player.play("spike_triggered")

func _on_animation_finished() -> void:
	# When spike_triggered animation finishes, go back to idle
	if animation_player.current_animation == "spike_triggered":
		animation_player.play("idle")
