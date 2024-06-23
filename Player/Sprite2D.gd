extends Sprite2D

var movement_speed = 500
var bullet_speed = 2000
var bullet = preload

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_up") and position.y > -150:
		position.y -= 10
	if Input.is_action_pressed("player_down") and position.y < 778:
		position.y += 10
	if Input.is_action_pressed("player_left") and position.x > -280:
		position.x -= 10
	if Input.is_action_pressed("player_right") and position.x < 1551:
		position.x += 10
		

func fire():
	var bullet_instance = bullet.instance
	bullet_instance.position = get_global_position()
	bullet_instance.rotation_degrees = rotation_degrees
