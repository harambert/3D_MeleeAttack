extends KinematicBody

onready var animation = $Graphics/Player/AnimationPlayer

func setStateIdle():
	animation.play("PlayerIdle",0.1)
	
func setStateAttack():
	animation.play("Attack",0.1)
	
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		setStateAttack()

func _on_Hitbox_body_entered(body):
	if body.has_method("hurt"):
		body.hurt()
