extends KinematicBody2D
export (int)  var vel = 200
var velocity = Vector2()
var vida = 3
var pt = 0

func _ready():
	#set_physics_process(true)
	pass
func get_input():
	velocity = Vector2()
	if Input.is_action_pressed('ui_right'):
		velocity.x +=1
	if Input.is_action_pressed('ui_left'):
		velocity.x -=1
	velocity = velocity.normalized() * vel
func _physics_process(delta):
	get_input()
	var col = move_and_collide(velocity*delta)
	if col:
		if col.collider.has_method("hit"):
			col.collider.hit(col.collider)
			addPoint(1)
func addPoint(point):
	pt +=1
	var txt_no = get_node('../pontos')
	var txt ="PONTOS: "
	txt_no.set_text(txt+ str(pt))