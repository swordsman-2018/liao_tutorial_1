extends Sprite


var _velocity = Vector2()

func _process(delta):
	self.position += _velocity*delta
	
	pass

func start(velocity,direction):
	var acc = randf()*0.1
	var dir = randi() % 10
	if dir==0||dir ==5||dir==9:
		self._velocity = velocity.rotated(direction)
	elif dir>=5:
		self._velocity = velocity.rotated(direction-acc)
	else:
		self._velocity = velocity.rotated(direction+acc)	
	pass
	
func _on_VisibilityNotifier2D_screen_exited():
	self.queue_free()