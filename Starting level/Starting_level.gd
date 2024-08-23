extends Node2D

@onready var meat_chunk = preload("res://bad guys/meat_chunk.tscn")
@onready var meat_chunke = preload("res://bad guys/meat_chunke.tscn")

@export var num_enemies_chunk = 5
@export var num_enemies_chunke = 5



func _ready():
	$Timer.start()


func _on_timer_timeout():
	if Global.levels >= 5:
		num_enemies_chunk = 2
	for i in range(num_enemies_chunk):
		var chunk = meat_chunk.instantiate()
		add_child(chunk)
		chunk.position.y = RandomNumberGenerator.new().randf_range(0.0, 1010.0)
		chunk.position.x = RandomNumberGenerator.new().randf_range(0.0, 1910.0)
		chunk.player = $player
	if Global.levels >= 3:
		if Global.levels >= 5:
			num_enemies_chunke = 7
		for i in range(num_enemies_chunke-2):
			var chunke = meat_chunke.instantiate()
			add_child(chunke)
			chunke.position.y = RandomNumberGenerator.new().randf_range(0.0, 1010.0)
			chunke.position.x = RandomNumberGenerator.new().randf_range(0.0, 1910.0)
			chunke.player = $player
	$Timer.start()
	
	
	

