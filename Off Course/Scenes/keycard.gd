extends AnimatedSprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	ConfirmSfx.play()
	hide()
	queue_free()
	pass # Replace with function body.
