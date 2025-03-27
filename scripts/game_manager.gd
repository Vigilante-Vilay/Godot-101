extends Node

var score = 0
@onready var score_label: Label = $ScoreLabel
@onready var death_label: Label = $DeathCounter

func addPoint():
	score +=1
	score_label.text = "You Collected "+ str(score) +" coins."

# Label to display deaths
func _process(_delta):
	death_label.text = "You Died " + str(DeathManager.death_count) + " times."
