extends CharacterBody2D

@onready var ray_left: RayCast2D = $RayLeft
@onready var ray_right: RayCast2D = $RayRight
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

var speed = 100
var direction = 1

func _physics_process(_delta: float) -> void:
	
	velocity.x = direction * speed
	
	if ray_left.is_colliding():
		direction = 1
	elif ray_right.is_colliding():
		direction = -1
	
	move_and_slide()
