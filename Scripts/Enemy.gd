extends Area2D

export (int) var life = 0
export (int) var speed = 0
export (int) var damage = 0
var velocity = Vector2()
var direction = Vector2()

func _ready():
	pass

func take_damage(damage):
	pass

func get_damage():
	return damage

func get_life():
	return life

func get_speed():
	return speed

func is_alive():
	return life > 0