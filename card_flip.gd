extends Node2D


func _on_Control_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_action_pressed("click"):
			$AnimationPlayer.play("Flipping")
