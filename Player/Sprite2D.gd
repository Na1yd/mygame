extends Sprite2D

@onready var anim = $AnimatedSprite2D
@onready var bullet_prefab = preload("res://Weapons/bullet.tscn")

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
	if Input.is_action_just_pressed("LMB"):
		var bullet = bullet_prefab.instantiate()
		bullet.position = position
		get_parent().add_child(bullet)
