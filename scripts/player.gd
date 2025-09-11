extends CharacterBody2D

@onready var _animation= $PlayerAnimation

const SPEED = 300.0

func get_input():
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity= direction*SPEED
	
	if direction.x > 0 :
		$PlayerAnimation.flip_h=false
		_animation.play("player_walk_h")
		
	elif direction.x < 0 : 
		$PlayerAnimation.flip_h=true
		_animation.play("player_walk_h")	
	
	elif direction.y < 0:
		_animation.play("player_walk_up")
	
	elif direction.y > 0:
		_animation.play("player_walk_down")

	else :
		_animation.play("player_idle")	
	

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()
