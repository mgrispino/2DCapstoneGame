extends Sprite2D

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":  
		call_deferred("_change_scene")
	pass # Replace with function body.

func _change_scene():
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
