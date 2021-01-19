extends Area2D


onready var animation_player : AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	visible = false


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		animation_player.play("fade_in")


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("click"):
		global_position = get_global_mouse_position()


func _on_body_entered(body: Node) -> void:
	animation_player.play("fade_out")
