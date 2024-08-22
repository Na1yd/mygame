extends Area2D


var hp = 10
var hurt = false

func _on_area_exited(area):
	if area.name == "Meat chunk hit box" or area.name == "Meat chunke hit box" :
		hp -= 1
		print(hp)
		if hp <= 0:
			get_tree().change_scene_to_file("res://Game over/game_over.tscn")
