extends Area2D

@onready var bullets_L = preload("res://Weapons/bullet_right.tscn")
var next_level = Global.levels*5
var level = 1
signal level_increase

func _process(delta):
	_update_ui()

func _on_body_entered(body : Node2D):
	if Global.enemies_killed >= next_level:
		if body.name == "player":
			Global.levels += 1
			Global.enemies_killed = 0
			level += 1
			_update_ui()
			get_tree().change_scene_to_file("res://Starting level/Starting_level.tscn")

func _update_ui():
	$Game_ui/Level_label.text = "level: " + str(Global.levels)
	print(Global.levels)


