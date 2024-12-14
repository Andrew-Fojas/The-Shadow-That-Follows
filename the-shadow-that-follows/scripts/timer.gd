extends CanvasLayer

@export var total_time: float = 60.0

var time_remaining: float = 0.0
var level_times : Array = [30.0, 60.0]

@onready var timer_label: Label = $"TimerLabel"

func _ready():
	var current_level = GameData.current_level
	# Set total_time based on the current level
	if current_level > 0 and current_level <= level_times.size():
		total_time = level_times[current_level - 1]  # Assuming levels start at 1
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
	var minutes : float = floor(time_remaining / 60)
	var seconds : float = floor(fmod(time_remaining, 60))
	timer_label.text = "%02d:%02d" % [minutes, seconds]
	# Change color as time gets low
	if time_remaining <= 11:
		timer_label.add_theme_color_override("font_color", Color.DARK_RED)

func game_over():
	GameData.current_level = 0
	get_tree().change_scene_to_file("res://scenes/game_over_screen.tscn")

# Optional: Reset timer
func reset_timer():
	time_remaining = total_time
