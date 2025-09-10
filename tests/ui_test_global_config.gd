extends GutTest

'''
TEST GLOBAL CONFIG
	
	Window config :
		size : 720*500
		scale mode : canvas_items
		scale aspect : keep
		
	Main scene :
		game_area:
			size : 520*500
			anchor : top_left
			
		hub_area :
			size : 200*500
			anchor : top_right
'''
var main
var game_zone
var hud_zone

func before_each():
	main = load("res://scenes/main.tscn")
	


func test_window_config_size_720_by_500_px():
	assert_eq(get_window().size,Vector2i(720,500))
		
func test_window_scale_aspect_mode_is_keep():
	assert_eq(get_window().CONTENT_SCALE_ASPECT_KEEP,1)
	

func test_main_scene_exists():
	assert_not_null(main.instantiate())

func test_game_zone_exist_into_main_scene():
	main.instantiate()
	var list_children=main.get_children()
	var result= list_children.has("game_zone")
	assert_true(result)
	
