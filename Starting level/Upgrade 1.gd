extends Button
var Text = ""

func _ready():
	var Upgrade = RandomNumberGenerator.new().randf_range(0, 3)
	print(Upgrade)
	print("yes")
	if Upgrade >= 1 and Upgrade <= 2:
		Text = "Bullet slowed"
		$"Upgrade label 1".text = "Bullet slowed"
	if Upgrade >= 1 and Upgrade <= 3:
		Text = "Player speed"
		$"Upgrade label 1".text = "Player speed"
	if Upgrade >= 2 and Upgrade <= 3:
		Text = "Bullet size"
		$"Upgrade label 1".text = "Bullet size"
	if Upgrade >= 0 and Upgrade <= 1:
		Text = "Idk man"
		$"Upgrade label 1".text = "Idk man"



func _on_button_up():
	if Text == "Bullet speed":
		Global.bullet_speed -= 5
	if Text == "Player speed":
		Global.speed += 1
	if Text == "Bullet size":
		Global.bullet_speed -= 5
	if Text == "Idk man":
		Global.speed += 1
