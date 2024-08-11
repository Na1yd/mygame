extends Area2D

class_name bu

var speed = 20

func _physics_process(delta):
	position.y -= speed
