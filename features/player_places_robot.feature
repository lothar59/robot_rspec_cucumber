Feature: player places the robot

    The player submits the position of the robot by giving two numbers between 0 to 4.     
    Plus, he will provide also a letter between 'N' 'E' 'S' 'W' to know if the robot 
    is facing North, East, South or West.

    Scenario: place  the robot
        Given the position "00N"
        Then I should see "PLACE 0,0,NORTH"
