extends Sprite2D

@onready var anim = $AnimatedSprite2D
@export var Bullet : PackedScene


var bullet_speed = 2000
func _ready():
	pass # Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
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
	look_at()
	if Input.is_action_just_pressed("LMB"):
		shoot()


func shoot():
	var b = Bullet.instantiate()
	add_child(b)
	b.transform = $Muzzle.transform
