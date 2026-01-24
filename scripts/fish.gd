extends Area2D

func _on_body_entered(body: Node2D) -> void:
	body.pickup_fish_sound.play()
	queue_free()
