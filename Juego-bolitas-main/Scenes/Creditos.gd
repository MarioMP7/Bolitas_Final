extends Control


onready var back = $CenterContainer/Back


func _ready():
	back.connect("pressed", self, "_on_back_pressed" )
	
	
func _on_back_pressed():
	get_tree().change_scene("res://Scenes/main_menu.tscn")
