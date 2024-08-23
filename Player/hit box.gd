extends Area2D

var hp = 10
@export var health_label_path : NodePath


func _on_area_exited(area):
	if area.name == "Meat chunk hit box" or area.name == "Meat chunke hit box" :
		hp -= 1
		_update_ui()
		if hp <= 0:
			get_tree().change_scene_to_file("res://Game over/game_over.tscn")
			
			
func _update_ui():
	get_node(health_label_path).text = "Hp: " + str(hp)
