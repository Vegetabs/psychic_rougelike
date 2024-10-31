extends Node

var game_env := "res://scenes/game_env.tscn"

var path_dict := {
	"game_env": game_env
}

func str_to_path(scene_name:String):
	if scene_name in path_dict:
		return path_dict[scene_name]
	else:
		assert(false,"Trying to get path for an invalid scene name")
