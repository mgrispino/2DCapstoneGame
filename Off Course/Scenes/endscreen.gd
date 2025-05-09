extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timerUI.hide()
	GameTimer.stop_timer()
	GameTimer.reset_timer()
	pass # Replace with function body.


func _on_menu_pressed() -> void:
	ConfirmSfx.play()
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.
