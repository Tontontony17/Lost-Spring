extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	await(get_tree().create_timer(1), "timeo")
	$AnimationPlayer.play("Fade")
	await(get_tree().create_timer(5), "timeout")
	$AnimationPlayer.play_backwards("Fade")
	await(get_tree().create_timer(3), "timeout")
	get_tree().change_scene("res://Scene/tiles.tscn")
	pass

