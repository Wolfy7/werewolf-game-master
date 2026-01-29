extends Control
class_name Player

signal clicked(player: Player)

@onready var highlight: ColorRect = $Highlight
@onready var name_label: Label = $VBoxContainer/NameLabel
@onready var card: TextureRect = $VBoxContainer/TextureRect

var is_selected := false

func set_selected(selected: bool) -> void:
	is_selected = selected
	highlight.visible = selected

func set_player_name(player_name: String) -> void:
	name_label.text = player_name

func set_alive(is_alive: bool) -> void:
	if is_alive:
		modulate = Color.WHITE
	else:
		modulate = Color(0.5, 0.5, 0.5, 0.8)
		
		
func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.is_pressed():
		emit_signal("clicked", self)
