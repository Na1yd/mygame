extends Area2D


var hp = 10


func _on_body_entered(area):
	if area == $meat_chunk_hit_box:
		print(hp)
		hp -= 1
		if hp > 0:
			get_tree().change_scene_to_file("res://Starting level/Starting_level.tscn")
