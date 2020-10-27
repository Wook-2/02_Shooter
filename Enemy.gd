extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
var motion = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	
	var Player = get_parent().get_node("Player")
	
	position += (Player.position - position)/50
	look_at(Player.position)
	position += (Player.position  - position) / 50
	look_at(Player.position)
	
	var _error = move_and_collide(position)
