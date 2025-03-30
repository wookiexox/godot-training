extends RigidBody2D


func _ready() -> void:
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_types.pick_random()


func _process(delta: float) -> void:
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
