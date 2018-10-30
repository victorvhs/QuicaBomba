extends RigidBody2D
var touch = 0

func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(3)
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
func hit(body):
	touch +=1
	if touch == 3:
		queue_free()
	pass # replace with function body
