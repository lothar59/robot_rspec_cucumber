Feature: player moves the robot

    When the player moves the robot by giving the command "MOVE", 
    the robot moves one unit forward in the direction it is currently facing

    Scenario: player moves the robot
        Given the position "00N"
        Then The robot should move one unit forward
