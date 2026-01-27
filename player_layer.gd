extends Control

@export var player_scene: PackedScene

func _ready() -> void:
	for player_data in GameState.players:
		var player = player_scene.instantiate()
		add_child(player)
		player.set_player_name(player_data.name)
