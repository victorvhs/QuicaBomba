extends Node
var makeBomb = preload("res://cenas/bomb.tscn")

func _ready():
	set_process(true)
	pass

func _process(delta):
	var bomb = makeBomb.instance()
	get_parent().add_child(bomb)
	pass
