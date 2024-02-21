extends Area2D

func _on_ObjectiveArea2_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	var myNotify = get_node("MyLabel")
	myNotify.text = "Level Completed!\nCongratulations, You Finished The Game!"
