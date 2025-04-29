extends CharacterBody2D

var start_position: Vector2

func _ready():
	var respawn_point = get_node_or_null("../Spawn")
	if respawn_point:
		start_position = respawn_point.global_position
	else:
		start_position = global_position

func respawn():
	global_position = start_position
	velocity = Vector2.ZERO
