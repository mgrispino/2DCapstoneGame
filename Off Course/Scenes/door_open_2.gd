extends Sprite2D

@onready var keycard = $"../Keycard"
var open = false

func _on_keycard_hidden() -> void:
	self.show()
	open = true

func _on_area_2d_body_entered(body: Node2D) -> void:	
	if open:
		if body.name == "CharacterBody2D":  
			call_deferred("_change_scene")

func _change_scene():
	get_tree().change_scene_to_file("res://Scenes/level 3.tscn")
