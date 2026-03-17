extends Node2D


@export var eq_name = "NAKED"
@export var type = "BODY"
@export var defense = 0
@export var offense = 0
@export var eq_id = "00000"
@export var sprite_path = "res://sprites/HeadNaked.png"
@export var eq_desc = "Just your flesh nothing protecting it. Maybe its the reflection of your inner savage or you just being irresponsible. Better find something to wear no one wants to see your blistered skin."


func _ready() -> void:
	var sprite  = load(sprite_path)
	$equipmentSprite.texture = sprite 


func change_equipment(eq_nme,dfs,ofs,id,sprite_pth,dsc,mode):
	if mode == "REMOVE":
		eq_name = "NAKED"
		defense = 0
		offense = 0
		eq_id = "00000"
		sprite_path = sprite_pth
		eq_desc = "Just your flesh nothing protecting it. Maybe its the reflection of your inner savage or you just being irresponsible. Better find something to wear no one wants to see your blistered skin."
	else:
		eq_name = eq_nme
		defense = dfs
		offense = ofs
		eq_id = id
		sprite_path = sprite_pth
		eq_desc = dsc
	
