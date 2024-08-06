extends CharacterBody2D

var speed = 5

@onready var anim = $AnimatedSprite2D
@onready var bullets_L = preload("res://Weapons/bullet_right.tscn")
@onready var bullets_R = preload("res://Weapons/bullet_left.tscn")
@onready var bullets_U = preload("res://Weapons/bullet_up.tscn")
@onready var bullets_D = preload("res://Weapons/bullet_down.tscn")
#projectile timer
func _on_start():
	$Timer.start()





func _ready():
	pass # Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	if Input.is_action_pressed("player_up") and position.y > 0:
		position.y -= speed
	if Input.is_action_pressed("player_up"):
		$Sprite2D/AnimatedSprite2D.play("up")
	if Input.is_action_pressed("player_down") and position.y < 1014:
		position.y += speed
	if Input.is_action_pressed("player_down"):
		$Sprite2D/AnimatedSprite2D.play("down")
	if Input.is_action_pressed("player_left") and position.x > 0:
		position.x -= speed
	if Input.is_action_pressed("player_left"):
			$Sprite2D/AnimatedSprite2D.play("left")
	if Input.is_action_pressed("player_right") and position.x < 1910:
		position.x += speed
	if Input.is_action_pressed("player_right"):
			$Sprite2D/AnimatedSprite2D.play("right")
			



#projectile code
func _on_timer_timeout():
	var bullet_L = bullets_L.instantiate()
	bullet_L.position = position
	get_parent().add_child(bullet_L)
	
	var bullet_R = bullets_R.instantiate()
	bullet_R.position = position
	get_parent().add_child(bullet_R)
	
	var bullet_U = bullets_U.instantiate()
	bullet_U.position = position
	get_parent().add_child(bullet_U)
	
	var bullet_D = bullets_D.instantiate()
	bullet_D.position = position
	get_parent().add_child(bullet_D)
	
	$Timer.start()
