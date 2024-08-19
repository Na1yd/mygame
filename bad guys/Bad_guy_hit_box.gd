extends Area2D

@onready var bullets_L = preload("res://Weapons/bullet_right.tscn")
@onready var bullets_R = preload("res://Weapons/bullet_left.tscn")
@onready var bullets_U = preload("res://Weapons/bullet_up.tscn")
@onready var bullets_D = preload("res://Weapons/bullet_down.tscn")



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.



var hit = 0


func _on_area_entered(area):
	if not area == $Area2D:
		hit += 1
		print(hit)
		if hit >= 3:
			var enemie = get_parent()
			enemie.queue_free()

