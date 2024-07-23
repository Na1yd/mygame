extends Sprite2D

@onready var anim = $AnimatedSprite2D
@onready var bullet_prefab0 = preload("res://Weapons/bullet_left.tscn")
@onready var bullet_prefab1 = preload("res://Weapons/bullet_right.tscn")
@onready var bullet_prefab2 = preload("res://Weapons/bullet_up.tscn")
@onready var bullet_prefab3 = preload("res://Weapons/bullet_down.tscn")
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
	if Input.is_action_just_pressed("LMB"):
		var bullet = bullet_prefab0.instantiate()
		bullet.position = position
		get_parent().add_child(bullet)
		
	if Input.is_action_just_pressed("LMB") and anim.play("right") == true:
		var bullet = bullet_prefab1.instantiate()
		bullet.position = position
		get_parent().add_child(bullet)
		
	if Input.is_action_just_pressed("LMB") and anim.play("up") == true:
		var bullet = bullet_prefab2.instantiate()
		bullet.position = position
		get_parent().add_child(bullet)
		
	if Input.is_action_just_pressed("LMB") and anim.play("down") == true:
		var bullet = bullet_prefab3.instantiate()
		bullet.position = position
		get_parent().add_child(bullet)
