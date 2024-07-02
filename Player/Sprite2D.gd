extends Sprite2D

var movement_speed = 500
var bullet_speed = 2000
var bullet = preload("res://Weapons/bullet.tscn")

func _ready():
	pass # Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_up") and position.y > -150:
		position.y -= 10
	if Input.is_action_pressed("player_down") and position.y < 778:
		position.y += 10
	if Input.is_action_pressed("player_left") and position.x > -280:
		position.x -= 10
	if Input.is_action_pressed("player_right") and position.x < 1551:
		position.x += 10
