extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 10

func _process(delta):
	if(Input.is_action_pressed("player1_down")):
		get_node("paddleLeft").move(Vector2(0,speed))
	elif(Input.is_action_pressed("player1_up")):
		get_node("paddleLeft").move(Vector2(0,-speed))
		
	if(Input.is_action_pressed("player2_down")):
		get_node("paddleRight").move(Vector2(0,speed))
	elif(Input.is_action_pressed("player2_up")):
		get_node("paddleRight").move(Vector2(0,-speed))


func _ready():
	# Called every time the node is added to the scene.
	set_process(true)
	# Initialization here
	pass
