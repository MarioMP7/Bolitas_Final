extends RigidBody2D

func power1(direction,distance):   
	
	 

	apply_central_impulse(direction*500/distance)
	pass
		
	

func power2(r_direction):
	

	
	apply_central_impulse(10*r_direction)
	pass
# Called when the node enters the scene tree for the first time.

func _ready():
	
	pass 


