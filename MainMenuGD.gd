extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_start_pressed():
	print("Start pressed")


func _on_settings_pressed():
	print("Settings pressed")


func _on_exit_pressed():
	get_tree().quit()


func _on_Start_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.


func _on_options_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.


func _on_exit_mouse_entered():
	$Hitsound.play()
	pass # Replace with function body.
