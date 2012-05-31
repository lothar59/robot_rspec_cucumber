Feature: report the position of the robot

	Scenario:
	  Given the position "00N"
	  When I report the position of the robot
	  Then I should see "Output: 0, 0, NORTH"
