extends Control
class_name PlayersActionPanel


var current_player: Player = null

func show_for_player(player: Player) -> void:
	current_player = player
	visible = true
	
func hide_panel() -> void:
	current_player = null
	visible = false


func _on_toogle_alive_pressed() -> void:
	if not current_player:
		return
		
	var index := GameState.players.find(current_player.data)
	GameState.players[index].alive = !GameState.players[index].alive
