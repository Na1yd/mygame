extends Area2D

class_name bl

var speed = 20

func _physics_process(delta):
	position.x -= Global.bullet_speed
