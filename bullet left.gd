extends Area2D

var speed = 20

func _physics_process(delta):
	position.x -= speed
