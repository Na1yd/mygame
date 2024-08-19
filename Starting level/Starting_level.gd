extends Node2D

@onready var meat_chunk = preload("res://bad guys/meat_chunk.tscn")

@export var num_enemies = 400


# Called when the node enters the scene tree for the first time.
func _ready():	
	for i in range(num_enemies):
		var chunk = meat_chunk.instantiate()
		add_child(chunk)
		chunk.position.y = RandomNumberGenerator.new().randf_range(0.0, 1010.0)
		chunk.position.x = RandomNumberGenerator.new().randf_range(0.0, 1910.0)
		chunk.player = $player




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
