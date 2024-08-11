extends Area2D

@onready var bullets_L = preload("res://Weapons/bullet_right.tscn")
@onready var bullets_R = preload("res://Weapons/bullet_left.tscn")
@onready var bullets_U = preload("res://Weapons/bullet_up.tscn")
@onready var bullets_D = preload("res://Weapons/bullet_down.tscn")

var hit = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.






func _on_area_entered(area):
	var enemie = get_parent()
	enemie.queue_free()

