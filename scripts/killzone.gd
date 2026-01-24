extends Area2D

@onready var timer: Timer = $Timer
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer



func _on_body_entered(_body: Node2D) -> void:
	print("You died!")
	timer.start()
	audio_stream_player.play()

func _on_timer_timeout() -> void:
	get_tree(). reload_current_scene()
