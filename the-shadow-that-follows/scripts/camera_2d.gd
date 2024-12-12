extends Camera2D

@export var total_time: float = 60.0

var time_remaining: float = 0.0

@onready var timer_label: Label = $TimerLabel

func _ready():
	# Initialize the timer
	time_remaining = total_time
	
	if not timer_label:
		add_child(timer_label)

func _process(delta):
	# Decrease time
	time_remaining -= delta
	
	# Check if time has run out
	if time_remaining <= 0:
		time_remaining = 0
		game_over()
	
	# Update the timer label
	update_timer_display()

func update_timer_display():
	# Format time
	var minutes = floor(time_remaining / 60)
	var seconds = floor(fmod(time_remaining, 60))
	timer_label.text = "%02d:%02d" % [minutes, seconds]
	# Optional: Change color as time gets low
	if time_remaining <= 10:
		timer_label.add_theme_color_override("font_color", Color.RED)

func game_over():
	get_tree().change_scene_to_file("res://game_over_scene.tscn")

# Optional: Reset timer
func reset_timer():
	time_remaining = total_time
