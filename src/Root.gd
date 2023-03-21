extends Node2D

var thing_scene = preload("res://Thing.tscn")

func _ready():
	var other_thing = thing_scene.instantiate()
	other_thing.position = Vector2(200, 200)
	add_child(other_thing)
