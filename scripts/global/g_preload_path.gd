extends Node

var word_entry_res = preload("res://scene/word_entry.tscn")
var clue_text_res = preload("res://scene/clue_text_ui.tscn")
var clue_image_res = preload("res://scene/clue_image_ui.tscn")
var clue_image_and_text_res = preload("res://scene/clue_image_and_text_ui.tscn")
var red_point_res = load("res://scene/red_point.tscn") # 避免编译时和clue_ui循环引用，需要用load
var portrait_card_res = preload("res://scene/portait_card.tscn")
var scene_item_res = preload("res://scene/right_scene_item.tscn")
var wave_effect = preload("res://scripts/wave_line_effect.gd") # 富文本波动效果

var audio_res := {
	"bgm" : {
		1 : "res://asset/music/intermission_machine_audio.ogg",
		2 : "res://asset/music/intermission_machine_audio.ogg",
	},
	"se" : {
		"button_open" : "res://asset/music/button_click.wav",
		"button_close" : "res://asset/music/button_click.wav",
	}
}

func get_bgm_res(chapter: int) -> Resource:
	if audio_res["bgm"].has(chapter):
		return load(audio_res["bgm"][chapter])
	return null

func get_se_res(type: String) -> Resource:
	if audio_res.se.has(type):
		return load(audio_res.se[type])
	return null
