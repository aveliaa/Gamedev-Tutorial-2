extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		var myNotify = get_node("MyLabel")
		myNotify.text = "Level Completed! \n Loading Next Level..."
		
		$"../Success".play()
		
		var bunny = get_node("bunny")
		bunny.visible = false
		
		yield(get_tree().create_timer(1), "timeout")
		get_tree().change_scene("res://scenes/second_level/SecondLevel.tscn")
