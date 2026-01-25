extends Area2D

@onready var game_manager: GameManager = %GameManager

@export var next_level: PackedScene


func _on_body_entered(body):
	game_manager.play_coin_sound()
	get_tree().change_scene_to_packed(next_level)
