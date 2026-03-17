extends Node2D




# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$HealthComponent.death.connect(_on_death)


func _on_death():
	self.queue_free()


func _on_button_pressed() -> void:
	$HealthComponent.damage(10)
