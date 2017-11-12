extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var paddleSpeed = Vector2(0,10)
var ballSpeed = Vector2( rand_range(1,11),rand_range(1,11))

func _process(delta):
	if(Input.is_action_pressed("player1_down")):
		get_node("paddleLeft").move(paddleSpeed)
	elif(Input.is_action_pressed("player1_up")):
		get_node("paddleLeft").move(-paddleSpeed)
		
	if(Input.is_action_pressed("player2_down")):
		get_node("paddleRight").move(paddleSpeed)
	elif(Input.is_action_pressed("player2_up")):
		get_node("paddleRight").move(-paddleSpeed)
	#Move the ball now
	get_node("ball").move(ballSpeed)
	if(get_node("ball").is_colliding()):
		var collisionNormal = get_node("ball").get_collision_normal()
		get_node("Label").set_text(str(int(collisionNormal.x))+","+str(int(collisionNormal.y)))
		if(int(abs(collisionNormal.x)+.2) > 0):
			ballSpeed*=Vector2(-1,1)
		if(int(abs(collisionNormal.y)+.2) > 0):
			ballSpeed*=Vector2(1,-1)
		
		
func _ready():
	# Called every time the node is added to the scene.
	set_process(true)
	# Initialization here
	pass
