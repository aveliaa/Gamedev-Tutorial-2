extends Area2D


func _on_ObjectiveArea2_body_entered(body):
	if (body.name == "GreenShip"):
		var ferret = get_node("ferret")
		ferret.visible = false
		
		var myNotify = get_node("MyLabel")
		myNotify.text = "Congratulations!\nYou Have Finished The Game!"
