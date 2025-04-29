extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$AnimationPlayer.play("RESET")
	hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	testEsc()
	pass

func resume():
	hide()
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")

func pause():
	show()
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
func testEsc():
	if Input.is_action_just_pressed("escape") and !get_tree().paused:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused:
		resume()
		
func _on_resume_pressed() -> void:
	ConfirmSfx.play()
	resume()

func _on_level_select_pressed() -> void:
	ConfirmSfx.play()
	resume()
	get_tree().change_scene_to_file("res://Scenes/level_select.tscn")

func _on_exit_pressed() -> void:
	ConfirmSfx.play()
	get_tree().quit()
	
func _on_main_menu_pressed() -> void:
	ConfirmSfx.play()
	resume()
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.
