extends Node2D

var level_scene 

func _ready() -> void:
	level_scene = preload("res://scenes/main_game.tscn")
	
func _on_play_pressed():
	get_tree().change_scene_to_packed(level_scene)

func _on_quit_pressed():
	get_tree().quit()
