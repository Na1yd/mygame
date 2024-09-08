extends Button

func _on_ready():
	var Upgrade = RandomNumberGenerator.new().randf_range(0, 3)
	print(Upgrade)
	if Upgrade >= 1 and Upgrade <= 2:
		text = "Bullet slowed"
	if Upgrade >= 1 and Upgrade <= 3:
		text = "Player speed"
	if Upgrade >= 2 and Upgrade <= 3:
		text = "Bullet size"
	if Upgrade >= 0 and Upgrade <= 1:
		text = "Idk man"

func _on_button_pressed():
	if text == "Bullet speed":
		Global.bullet_speed -= 5
