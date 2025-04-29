extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	AudioPlayer.play_music_level()
	
	pass # Replace with function body.

func _on_start_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/level 1.tscn")
	
	pass # Replace with function body.

func _on_controls_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/Controls.tscn")
	
	pass # Replace with function body.

func _on_quit_pressed() -> void:
	ConfirmSfx.play()
	get_tree().quit()
	pass # Replace with function body.
	
func _on_next_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/Controls2.tscn")
	pass # Replace with function body.

func _on_level_select_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn")
	pass # Replace with function body.



func _on_back_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.
