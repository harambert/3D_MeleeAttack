extends KinematicBody

onready var animation = $Graphics/Enemy/AnimationPlayer

func hurt():
	animation.play("EnemyHurt",0.1)
	$HurtParticles.emitting = true
	$AudioStreamPlayer3D.play()

func setStateIdle():
	animation.play("EnemyIdle",0.1)
