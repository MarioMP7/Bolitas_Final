extends MarginContainer

onready var start = $TextureRect/PanelContainer/VBoxContainer/Start
onready var exit = $TextureRect/PanelContainer/VBoxContainer/Exit
onready var credit = $TextureRect/PanelContainer/VBoxContainer/Credit

func _ready():
	start.connect("pressed", self, "_on_start_pressed" )
	exit.connect("pressed", self, "_on_exit_pressed")
	credit.connect("pressed", self, "_on_credit_pressed")

func _on_start_pressed():
	get_tree().change_scene("res://Scenes/Niveles.tscn")

func _on_exit_pressed():
	get_tree().quit()
	
func _on_credit_pressed():
	get_tree().change_scene("res://Scenes/Creditos.tscn")
