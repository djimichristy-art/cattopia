extends Area2D

func _on_body_entered(body):
	body.pickup_fish_sound.play()
	print("+1 coin!")
	queue_free()
