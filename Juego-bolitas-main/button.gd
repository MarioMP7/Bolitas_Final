extends RigidBody2D

var pressed = false
signal button_pressed
signal button_released



func _ready():
	$Area2D.connect("body_entered",self,"on_body_entered")
	$Area2D.connect("body_exited",self,"on_body_exited")


func on_body_entered(body):
	pressed = true 
	$Sprite.frame=1
	emit_signal("button_pressed")
	
	
	

func on_body_exited(body):
	pressed = false 
	$Sprite.frame=0
	emit_signal("button_released")

