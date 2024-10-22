extends Node

func _process(_delta: float) -> void:
    if Input.is_action_just_pressed("quit_game"):
        get_tree().quit()
