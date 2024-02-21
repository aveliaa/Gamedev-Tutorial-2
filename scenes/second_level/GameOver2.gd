extends Area2D

func _on_GameOver_body_entered(body: RigidBody2D):
	if (body.name == "GreenShip"):
		$"../GameOverMusic".play()
		$"../ObjectiveArea2/MyLabel".text = "You Failed!\nRestarting..."
		yield(get_tree().create_timer(2), "timeout")
		get_tree().change_scene("res://scenes/main_level/MainLevel.tscn")
