class_name Player
extends CharacterBody2D

@export var speed: float = 400

func _process(_delta: float) -> void:
    var input_direction: Vector2 = Input.get_vector("player_walk_left", "player_walk_right", "player_walk_up", "player_walk_down")
    velocity = input_direction * speed
    move_and_slide()