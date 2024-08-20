extends Area2D

@onready var bullets_L = preload("res://Weapons/bullet_right.tscn")
var next_level = Global.levels*5


func _on_body_entered(body : Node2D):
	if Global.enemies_killed >= next_level:
		if body.name == "player":
			Global.levels += 1
			Global.enemies_killed = 0
			get_tree().change_scene_to_file("res://Starting level/Starting_level.tscn")
	
