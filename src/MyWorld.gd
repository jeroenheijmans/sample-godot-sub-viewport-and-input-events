extends Node2D

var thing_scene = preload("res://Thing.tscn")
var ball_scene = preload("res://Ball.tscn")

func _ready():
	add_thing()

func add_thing():
	var other_thing = thing_scene.instantiate()
	other_thing.position = Vector2(randi_range(0, 384), randi_range(250, 350))
	other_thing.rotation = randi_range(-5, 5)
	add_child(other_thing)
	
	# See also: https://gamedev.stackexchange.com/a/204972/16701
	prints("-----------------------------------------")
	prints("Show connected signals for new component:")
	var signal_target = other_thing
	for connections in signal_target.get_incoming_connections():
		for key in connections:
			prints(key, "=>", connections[key])

func add_ball():
	var ball = ball_scene.instantiate() as RigidBody2D
	ball.position = Vector2(randi_range(30, 350), 0)
	ball.angular_velocity = 25
	add_child(ball)
