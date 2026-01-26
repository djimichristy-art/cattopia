extends Area2D

@onready var game_manager: GameManager = %GameManager


func _on_body_entered(body: Node2D) -> void:
	# Play Victory Sounds
	game_manager.play_finale()
	await get_tree().create_timer(2).timeout
	
	get_tree().change_scene_to_file("res://scenes/end_page.tscn")
	
	# Go to end screen
	
	
