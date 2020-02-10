extends Light2D

export var gridSize = 128;
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(_delta):
	mouse_follow()

func mouse_follow(snap_to_grid = false):
	var mouse_position = get_global_mouse_position();
	var x = 0;
	var y = 0;
	if snap_to_grid:
		x = floor((mouse_position.x + gridSize/2)/gridSize)*gridSize;
		y = floor((mouse_position.y + gridSize/2)/gridSize)*gridSize;
	else:
		x = mouse_position.x
		y = mouse_position.y
	position = Vector2(x,y);
	pass