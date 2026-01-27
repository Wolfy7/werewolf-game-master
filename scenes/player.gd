extends Control

@onready var name_label: Label = $VBoxContainer/NameLabel

func set_player_name(player_name: String) -> void:
	name_label.text = player_name
