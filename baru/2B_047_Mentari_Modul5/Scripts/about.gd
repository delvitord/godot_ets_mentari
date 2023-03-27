extends Control

func _ready():
	pass


func _on_BtnBack_pressed():
	get_tree().change_scene("res://Scenes/Welcome.tscn")
	if get_tree().change_scene("res://Scenes/Welcome.tscn") != OK:
		print("Scene Tidak Ada")
