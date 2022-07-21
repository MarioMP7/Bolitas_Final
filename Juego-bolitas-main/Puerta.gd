extends RigidBody2D

export (NodePath) var target_path
onready var target


func _ready():
	target = get_node(target_path)
	target.connect("button_pressed",self,"on_target_pressed")
	target.connect("button_released",self,"on_target_released")
	
	
func on_target_pressed():
	print("la puerta se abre!")
	$Sprite.frame=1
	$CollisionShape2D.set_deferred("disabled", true)
	
func on_target_released():
	print("la puerta se cierra!")
	$Sprite.frame=0
	$CollisionShape2D.set_deferred("disabled", false)
	
	
	
	pass # Replace with function body.

