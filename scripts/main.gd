extends Node
var makeBomb = preload("res://cenas/bomb.tscn")
var total = 0
var touch =0

func _ready():
	set_process(true)
	pass

func _process(delta):
	if total <=5:
		var bomb = makeBomb.instance()
		get_parent().add_child(bomb)
		total+=1
		print(total)
	pass
# replace with function body
