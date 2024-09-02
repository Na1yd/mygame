extends Node2D





func _on_button_pressed():
	Global.enemies_killed = 0
	Global.levels = 1
	get_tree().change_scene_to_file("res://Starting level/Starting_level.tscn")
