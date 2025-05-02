extends Area2D

var disappearing_electrobarrier  # Variable to hold the reference to the electrobarrier
var timer  # Timer for controlling the visibility toggle

func _ready():
	# Make sure to use the correct node path for Disappearing_ElectroBarrier
	disappearing_electrobarrier = $Disappearing_ElectroBarrier  # Assuming it's a child node
	timer = $Timer  # Get the Timer node (assuming it is a direct child of the current node)
	
	timer.wait_time = 2.5  # Set the interval to 2.5 seconds
	timer.autostart = true  # Start the timer automatically
	timer.connect("timeout", Callable(self, "_on_Timer_timeout"))  # Connect the timeout signal to the function
	
	# Connect the body_entered signal to the function that handles collisions
	connect("body_entered", Callable(self, "_on_body_entered"))

# Function to handle the player's collision with the electrobarrier
func _on_body_entered(body):
	if body.name == "CharacterBody2D":  # Check if the player character collided with the barrier
		if disappearing_electrobarrier.is_visible():  # If the electrobarrier is visible
			print("Collided with electrobarrier while visible!")
			body.respawn()  # Respawn the player (or handle death accordingly)
		else:
			print("Passed through electrobarrier safely!")  # Player passes through when it's invisible

# Function to toggle the visibility of the electrobarrier every 2.5 seconds
func _on_Timer_timeout():
	print("Toggling visibility...")  # Debugging message to track visibility changes
	if disappearing_electrobarrier.is_visible():
		print("Hiding disappearing electrobarrier")  # Debug message for visibility toggle
		disappearing_electrobarrier.hide()  # Make the electrobarrier invisible
	else:
		print("Showing disappearing electrobarrier")  # Debug message for visibility toggle
		disappearing_electrobarrier.show()  # Make the electrobarrier visible again
