extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../FadetoBlack/AnimationPlayer".play("RESET")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		$"../FadetoBlack/AnimationPlayer".play("fade_black")
		await get_tree().create_timer(3.0).timeout  
		get_tree().change_scene_to_file("res://Scenes/Endscreen.tscn")
	pass # Replace with function body.
