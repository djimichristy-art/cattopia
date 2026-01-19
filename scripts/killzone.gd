extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("You died!")
	timer.start()

func _on_timer_timeout() -> void:
	get_tree(). reload_current_scene()


func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	pass # Replace with function body.
