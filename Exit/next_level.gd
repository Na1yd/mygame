extends Area2D

@onready var bullets_L = preload("res://Weapons/bullet_right.tscn")

func _on_body_entered(body : Node2D):
	if body.name == "player":
		get_tree().change_scene_to_file("res://Starting level/Starting_level.tscn")
	
