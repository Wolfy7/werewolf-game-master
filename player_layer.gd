extends Control

@export var player_scene: PackedScene
@export var radius: float = 360.0

func _ready() -> void:
	layout_players()
	
func layout_players():
	var center := size / 2
	var count := GameState.players.size()
	
	for i in count:
		var player = player_scene.instantiate()
		add_child(player)
		player.set_player_name(GameState.players[i].name)
		player.set_alive(GameState.players[i].alive)
		
		var angle := TAU * i / count - PI / 2
		var pos := center + Vector2(cos(angle), sin(angle)) * radius
		player.position = pos
