extends CharacterBody2D

#this is set to point to the player
var player : Node2D
var exit = 0

#speed
@export_range(20,300) var speed : float = 100

func _ready():
	pass
	
func _process(delta):
	var direction = (player.position - position).normalized()
	velocity = direction * speed
	move_and_slide()
	exit += 1

