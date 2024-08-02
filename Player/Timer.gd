extends Timer


func _on_start():
	$Timer.start()



func _on_timeout_timeout():
	$Timer.on_start()

func start():
	$Timer.start
