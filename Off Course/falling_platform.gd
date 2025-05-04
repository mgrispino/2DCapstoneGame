extends RigidBody2D

func _ready():
	freeze = true
	$Timer.wait_time = 1.0
	$Timer.one_shot = true

func _process(_delta):
	pass

func _on_timer_timeout():
	$AnimatedSprite2D.play("off")
	freeze = false
	var tween = get_tree().create_tween()
	tween.tween_property($AnimatedSprite2D, "modulate", Color.TRANSPARENT, 1)
	# DO NOT queue_free() if you want to reset it later
	# tween.tween_callback(self.queue_free)

func _on_area_2d_body_entered(body):
	if body.name == "CharacterBody2D":
		print("start")
		$Timer.start()
