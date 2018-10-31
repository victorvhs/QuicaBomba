extends RigidBody2D
var touch = 0
var point = 0
func _ready():
	set_contact_monitor(true)
	set_max_contacts_reported(3)
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
func hit(body):
	touch +=1
	match touch:
		1:
			blink(0, 1, 0,1)
		2:
			blink(1, 0.65, 0, 1)
		3:
			blink(1, 0, 0,1)
		4:
			point +=1
			queue_free()
func blink(red,gree,blue,alpha):
	get_node("bomb").modulate = Color(red,gree,blue,alpha)