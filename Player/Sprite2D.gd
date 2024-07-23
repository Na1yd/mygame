extends Sprite2D

@onready var anim = $AnimatedSprite2D
@onready var bullet_instant = preload("res://Weapons/bullet.tscn")


var bullet_speed = 2000
func _ready():
	pass # Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_up") and position.y > -150:
		position.y -= 10
	if Input.is_action_pressed("player_up"):
		anim.play("up")
	if Input.is_action_pressed("player_down") and position.y < 778:
		position.y += 10
	if Input.is_action_pressed("player_down"):
		anim.play("down")
	if Input.is_action_pressed("player_left") and position.x > -280:
		position.x -= 10
	if Input.is_action_pressed("player_left"):
			anim.play("left")
	if Input.is_action_pressed("player_right") and position.x < 1551:
		position.x += 10
	if Input.is_action_pressed("player_right"):
			anim.play("right")
	look_at(get_global_mouse_position())

	if Input.is_action_just_pressed("LMB"):
		fire()
func fire():
	var bullet = bullet_instant.instantiate()
	bullet.position = get_global_position()
	bullet_instant.rotation_degrees = rotation_degrees
	bullet_instant.apply_impulse(Vector2(),Vector2(bullet_speed,0).rotated(rotation))
	get_tree().get_root().call_deferred("add_child",bullet_instant)
