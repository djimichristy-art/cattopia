extends Area2D

func _on_body_entered(_body: Node2D) -> void:
	print("Yooohooooooo")
	queue_free()
