class_name Player
extends CharacterBody2D

@export var speed: float = 400

@export var animated_sprite: AnimatedSprite2D

func _process(_delta: float) -> void:
    var input_direction: Vector2 = Input.get_vector("player_walk_left", "player_walk_right", "player_walk_up", "player_walk_down")
    velocity = input_direction * speed
    move_and_slide()
    play_animation()

func play_animation() -> void:
    animated_sprite.flip_h = false

    if velocity.x > 0:
        animated_sprite.play("walk_right")
    elif velocity.x < 0:
        animated_sprite.play("walk_right")
        animated_sprite.flip_h = true
    elif velocity.y > 0:
        animated_sprite.play("walk_down")
    elif velocity.y < 0:
        animated_sprite.play("walk_up")
    else:
        animated_sprite.play("idle")
