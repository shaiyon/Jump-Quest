extends Area2D
# Transitions between levels 

var next_level = "res://Levels/level_{0}/level_{0}.tscn"
var end_screen = "res://Levels/end_screen/end_screen.tscn"

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		# Change scene to next level 
		if global.level != global.max_level:
			get_tree().change_scene(next_level.format([global.level+1]))
		# Change scene to end screen 
		else:
			get_tree().change_scene(end_screen)

