extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player_up"):
		position.y -= 10
	if Input.is_action_pressed("player_down"):
		position.y += 10
	if Input.is_action_pressed("player_left"):
		position.x -= 10
	if Input.is_action_pressed("player_right"):
		position.x += 10
