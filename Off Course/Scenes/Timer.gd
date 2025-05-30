extends CanvasLayer

const MAX_TIME := 20 * 60  # change 20 to another number to change timer
var has_faded := false

func _process(delta):
	if GameTimer.is_running:
		var time = GameTimer.get_time()
		reset()
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

func reset():
	has_faded = false
	$AnimationPlayer.play("reset")
	
func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_black":
		GameTimer.reset_timer()
		await get_tree().create_timer(1.0).timeout
		has_faded = false
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
	pass # Replace with function body.
