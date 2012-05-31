Feature: player starts game

    As a player
    I want to start a game
    So that I can move the robot

    Scenario: start game
        Given I am not playing yet
        When I start a new game
        Then I should see "Welcome to Robot Simulator!"
        And I should see "Place Robot :"
