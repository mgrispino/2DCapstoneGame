extends Area2D

@onready var sprite = $AnimatedSprite2D
@onready var collision = $CollisionShape2D
@onready var timer = $Timer

func _ready():
	timer.wait_time = 2.5
	timer.autostart = true
	timer.one_shot = false
	timer.start()
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))

	connect("body_entered", Callable(self, "_on_body_entered"))

	show_barrier() 

func _on_timer_timeout():
	if sprite.visible:
		hide_barrier()
	else:
		show_barrier()

func hide_barrier():
	print("Hiding barrier")
	sprite.visible = false
	collision.disabled = true

func show_barrier():
	print("Showing barrier")
	sprite.visible = true
	collision.disabled = false

func _on_body_entered(body):
	if sprite.visible and not collision.disabled:
		if body.name == "CharacterBody2D":
			print("Hit by electrobarrier!")
			body.respawn()
