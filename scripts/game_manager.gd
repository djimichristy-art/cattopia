extends Node2D
class_name GameManager

var score = 0

@onready var pickup_coin_sound: AudioStreamPlayer = $PickupCoinSound
@onready var pickup_fish_sound: AudioStreamPlayer = $PickupFishSound


func add_point():
	score += 1
	print(score)


func play_coin_sound():
	pickup_coin_sound.play()

func play_fish_sound():
	pickup_fish_sound.play()
