extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body is PlayerController:
		print("you have died!")
		get_tree(). reload_current_scene()
	
	#timer.start()
#
#func _on_timer_timeout():
	#get_tree().reload_current_scene()
