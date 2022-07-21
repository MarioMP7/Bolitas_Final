extends Control


onready var lvl1 = $TextureRect/VBoxContainer/CenterContainer/Nivel_1
onready var lvl2 = $TextureRect/VBoxContainer/CenterContainer/Nivel_2
onready var lvl3 = $TextureRect/VBoxContainer/CenterContainer/Nivel_3
onready var lvl4 = $TextureRect/VBoxContainer/CenterContainer/Nivel_4
onready var tutorial = $TextureRect/VBoxContainer/tutorial
onready var back = $CenterContainer/Back

func _ready():
	lvl1.connect("pressed", self, "_on_lvl1_pressed" )
	lvl2.connect("pressed", self, "_on_lvl2_pressed" )
	lvl3.connect("pressed", self, "_on_lvl3_pressed" )
	lvl4.connect("pressed", self, "_on_lvl4_pressed" )
	tutorial.connect("pressed", self, "_on_tutorial_pressed" )
	back.connect("pressed", self, "_on_back_pressed" )
	
func _on_lvl1_pressed():
	get_tree().change_scene("res://Scenes/level 1.tscn")
	
func _on_lvl2_pressed():
	get_tree().change_scene("res://Scenes/level 2.tscn")	
	
func _on_lvl3_pressed():
	get_tree().change_scene("res://Scenes/level_3.tscn")

func _on_lvl4_pressed():
	get_tree().change_scene("res://Scenes/level4.tscn")

func _on_tutorial_pressed():
	get_tree().change_scene("res://Scenes/level.tscn")

func _on_back_pressed():
	get_tree().change_scene("res://Scenes/main_menu.tscn")


