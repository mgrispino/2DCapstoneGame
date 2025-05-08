extends CanvasLayer

const MAX_TIME := 20 * 60  # change 20 to another number to change timer
var has_faded := false

func _process(delta):
	if GameTimer.is_running:
		var time = GameTimer.get_time()
		if time >= MAX_TIME and not has_faded:
			has_faded = true
			fade_to_black()
			GameTimer.stop_timer()
			return

		var minutes = int(time) / 60
		var seconds = int(time) % 60
		$TimerLabel.text = "Time: %02d:%02d" % [minutes, seconds]

func fade_to_black():
	$AnimationPlayer.play("fade_black")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_black":
		GameTimer.reset_timer()
		await get_tree().create_timer(2.0).timeout
		get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")
	pass # Replace with function body.
