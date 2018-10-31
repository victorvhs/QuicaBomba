extends Node
var makeBomb = preload("res://cenas/bomb.tscn")
var total
var cont = true
func _ready():
	set_process(true)
	pass

func _process(delta):
	total = get_tree().get_nodes_in_group("bomba").size()
	if total <=5 :
		var bomb = makeBomb.instance()
		get_parent().add_child(bomb)
		total+=1
		pass
# replace with function body
