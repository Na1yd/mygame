extends CharacterBody2D

#this is set to point to the player
var player : Node2D

#speed
@export_range(50,500) var speed : float = 250

func _ready():
	pass
	
func _process(delta):
	var direction = (player.position - position).normalized()
	velocity = direction * speed
	move_and_slide()
	

