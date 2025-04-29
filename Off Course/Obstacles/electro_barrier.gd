extends Area2D

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == "CharacterBody2D":  # Check if the player touched the spike
		body.respawn()  # Call respawn function in the player's script
