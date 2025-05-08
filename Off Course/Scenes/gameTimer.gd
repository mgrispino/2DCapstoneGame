extends Node

var time_elapsed: float = 0.0
var is_running: bool = false

func _process(delta):
	if is_running:
		time_elapsed += delta

func start_timer():
	is_running = true
	time_elapsed = 0.0

func stop_timer():
	is_running = false

func get_time():
	return time_elapsed

func reset_timer():
	time_elapsed = 0.0
	is_running = false
