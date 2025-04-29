extends Area2D

@onready var checkpoint = $AnimatedSprite2D 

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		var player = body as CharacterBody2D
		player.death_pos = global_position
		checkpoint.play("Active")
		print("New death_pos: ", global_position)
	pass # Replace with function body.
