extends Control

onready var scene_tree: = get_tree()
onready var pause_overlay: ColorRect = get_node("Pause")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		scene_tree.set_input_as_handled()
		set_paused(!scene_tree.paused)

func set_paused(value: bool) -> void:
	scene_tree.paused = value
	pause_overlay.visible = value

func _on_quit_button_up():
	get_tree().quit()

func _on_menu_pausa_button_up():
	set_paused(!scene_tree.paused)
	get_tree().change_scene("res://Scenes/main_menu.tscn")
