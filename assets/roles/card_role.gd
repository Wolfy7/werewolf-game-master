extends Resource
class_name CardRole

enum RoleType { VILLAGER, WEREWOLF, SEER, HUNTER, CUPID, WITCH, ELDER }

@export var role_type: RoleType
@export var name: String
@export var description: String
@export var icon: Texture2D

func _to_string() -> String:
	return "CardRole(%s - %s)" % [RoleType.keys()[role_type], name]
