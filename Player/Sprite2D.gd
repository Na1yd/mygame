extends Sprite2D


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
	if Input.is_action_pressed("player_right") and position.x < 1200:
		position.x += 10
