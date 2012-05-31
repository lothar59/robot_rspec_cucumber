$LOAD_PATH << File.expand_path('../../../lib', __FILE__)
require 'robotsimulator'

module GameUtils
  def start_game
    @game ||= RobotSimulator::Game.new(output)
    @game.start
  end
  
  def new_robot
    @robot ||= RobotSimulator::Robot.new(output)
  end
end

World(GameUtils)
