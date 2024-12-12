extends Node2D

@export var total_cooldown: float = 5.0

@onready var progress_bar = $ProgressBar
@onready var player = get_parent()

func _ready():

	progress_bar.min_value = 0
	progress_bar.max_value = total_cooldown
	progress_bar.value = total_cooldown
	
	# Hide percentage text
	progress_bar.show_percentage = false
	
	# Progress bar style
	var style_box_bg = StyleBoxFlat.new()
	style_box_bg.bg_color = Color(0.2, 0.2, 0.2, 0.5)  # Dark background
	style_box_bg.corner_radius_top_left = 1
	style_box_bg.corner_radius_top_right = 1
	style_box_bg.corner_radius_bottom_left = 1
	style_box_bg.corner_radius_bottom_right = 1
	
	var style_box_fill = StyleBoxFlat.new()
	style_box_fill.bg_color = Color.WHITE
	style_box_fill.corner_radius_top_left = 1
	style_box_fill.corner_radius_top_right = 1
	style_box_fill.corner_radius_bottom_left = 1
	style_box_fill.corner_radius_bottom_right = 1
	
	progress_bar.add_theme_stylebox_override("background", style_box_bg)
	progress_bar.add_theme_stylebox_override("fill", style_box_fill)

func _process(delta):
	# Update progress bar based on time
	if player.has_method("get_cooldown_timer"):
		progress_bar.value = total_cooldown - player.get_cooldown_timer()
	else:
		progress_bar.value = total_cooldown - player.cooldown_timer
