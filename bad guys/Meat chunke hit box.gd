extends Area2D

var hit = 0


func _on_area_entered(area):
	if not area.name == "Meat chunk hit box" and not area.name == "Meat chunke hit box":
		hit += 1
		if hit >= 4:
			
			Global.enemies_killed += 1
			var enemie = get_parent()
			enemie.queue_free()
	if area.name == "hit box":
		var enemie = get_parent()
		enemie.queue_free()
