extends Control
class_name Player

@onready var name_label: Label = $VBoxContainer/NameLabel
@onready var card: TextureRect = $VBoxContainer/TextureRect

func set_player_name(player_name: String) -> void:
	name_label.text = player_name

func set_alive(is_alive: bool) -> void:
	if is_alive:
		modulate = Color.WHITE
	else:
		modulate = Color(0.5, 0.5, 0.5, 0.8)
