extends Control


func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass


func _on_play_pressed() -> void: # Play button pressed
	get_tree().change_scene_to_file("res://scenes/main.tscn")

func _on_options_pressed() -> void: # Options button pressed
	pass


func _on_quit_pressed() -> void: # Quit button pressed
	get_tree().quit()
