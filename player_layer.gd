extends Control

@export var player_scene: PackedScene
@export var radius: float = 360.0

@onready var players_action_panel: PlayersActionPanel = $PlayersActionPanel

var selected_player: Player = null

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
		player.clicked.connect(_on_player_clicked)
		
		var angle := TAU * i / count - PI / 2
		var pos := center + Vector2(cos(angle), sin(angle)) * radius
		player.position = pos
		
func _on_player_clicked(player: Player) -> void:
	if selected_player:
		selected_player.set_selected(false)
	
	selected_player = player
	selected_player.set_selected(true)
	players_action_panel.show_for_player(selected_player)
