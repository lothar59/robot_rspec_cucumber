Feature: player rotate the robot to the left
	
	When the player ask for the command left the the robot turn on the left

	Scenario: robot left rotation
	  Given the position "00N"
          Then the robot should left rotate
