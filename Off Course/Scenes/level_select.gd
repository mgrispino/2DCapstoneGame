extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timerUI.hide()
	GameTimer.stop_timer()
	GameTimer.reset_timer()
	pass # Replace with function body.


func _on_level_1_pressed() -> void:
	ConfirmSfx.play()
	GameTimer.start_timer()
	timerUI.show()
	get_tree().change_scene_to_file("res://Scenes/level 1.tscn")
	pass # Replace with function body.


func _on_level_2_pressed() -> void:
	ConfirmSfx.play()
	GameTimer.start_timer()
	timerUI.show()
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
	pass # Replace with function body.


func _on_back_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.

func _on_level_3_pressed() -> void:
	ConfirmSfx.play()
	GameTimer.start_timer()
	timerUI.show()
	get_tree().change_scene_to_file("res://Scenes/level 3.tscn")
	pass # Replace with function body.
	
func _on_level_4_pressed() -> void:
	ConfirmSfx.play()
	GameTimer.start_timer()
	timerUI.show()
	get_tree().change_scene_to_file("res://Scenes/level_4.tscn")
	pass # Replace with function body.
