extends Node2D



@export var health: int = 100
@export var max_health: int = 100

signal death


func heal(amount: int):
	health += amount
	health = clamp(health, 0, max_health)


func damage(amount: int):
	health -= amount
	health = clamp(health, 0, max_health)

	if health == 0:
		death.emit()
