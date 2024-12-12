extends Control

@export var typing_speed: float = 0.03 # Time delay between characters
@onready var text_label: Label = $TextLabel

var full_text: String = ""
var current_char_index: int = 0
var is_typing: bool = false
# var current_level: int = 0
# Narrative texts for each level
var _narratives : Array = [
	"    The soft hum of your light echoes in your ears as you wake in the dim room of the mental facility. 
	The clock on the wall ticks endlessly, but time feels irrelevant. Memories of that day flash before your eyes—blurred faces, 
	muffled screams, the weight of guilt.
	Then you hear it. A faint, guttural whisper. Your heart races. Shadows flicker unnaturally on the walls, 
	twisting and shifting like they have a mind of their own. It’s back. The same shadow that haunted your dreams now lurks in reality.
	You have to leave. Tonight. Before time runs out.",
	
	"The cold, sterile air grows heavier as you descend into the facility.
	Your mind whispers doubts, 
	Is this real, or just another hallucination?
	But the shadow is real. You felt its presence brush against you as you escaped the first floor. It’s faster now, hungrier. 
	You clutch at fleeting memories, 
	trying to focus—what did they say about facing your fears?
	The sound of footsteps—yours or the shadow’s?—propels you forward. This floor holds secrets you’ve buried, 
	and confronting them might be the only way to escape.",
	
	"The air is suffocating now, thick with the weight of the past. This is the heart of your trauma. 
	This is where it all began. The shadow is no longer hiding. It circles you, taunting, feeding on your fear. 
	You hear whispers from the past—It was your fault. You deserve this. Your legs tremble, but you keep moving. You have no choice.
	The exit is ahead, but so is the shadow. To leave this place, you must confront it—accept the truth or let it consume you. 
	This is your final chance to break free, not just from the facility, but from the chains of your own mind.
	Will you escape, or will the shadow finally claim you?",
]
# Level scenes
var _levels : Array = [
	"res://scenes/level_1.tscn",
	"res://scenes/level_2.tscn",
	"res://scenes/level_3.tscn",
]
# Store next level scene to transition to
var next_level_scene : String


func _ready() -> void:
	set_text(_narratives[GameData.current_level])

# Set text to display in story scene
func set_text(new_text: String) -> void:
	# Set the full text and reset typing variables
	full_text = new_text
	current_char_index = 0
	is_typing = true
	$TextLabel.text = ""  # Clear the label
	$Timer.wait_time = typing_speed
	$Timer.start()

# Typing effect
func _on_timer_timeout() -> void:
	# Add the next character to the TextLabel text
	if current_char_index < full_text.length():
		$TextLabel.text += full_text[current_char_index]
		current_char_index += 1
		if has_node("AudioStreamPlayer"):
			$AudioStreamPlayer.play()
	else:
		# Stop typing once the text is fully displayed
		$Timer.stop()
		is_typing = false

# Continue to level when 'spacebar' is pressed
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):  
		if is_typing:
			# Finish typing immediately
			$Timer.stop()
			$TextLabel.text = full_text
			is_typing = false
		else:
			# Transition to next scene
			if GameData.current_level < _levels.size():
				get_tree().change_scene_to_file(_levels[GameData.current_level])
				GameData.current_level += 1
				print(GameData.current_level)
