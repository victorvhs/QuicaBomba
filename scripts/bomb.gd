extends RigidBody2D
var touch = 0

func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(3)
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.

	pass

func _on_bomb_body_entered(body):
	touch +=1
	if body.is_in_group('player'):
		if touch == 3:
			queue_free()
	else:
		queue_free()
		
	pass # replace with function body
