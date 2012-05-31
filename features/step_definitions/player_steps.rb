#start
Given /^I am not playing yet$/ do
end

When /^I start a new game$/ do
  start_game
end

#start, place
Then /^I should see "([^"]*)"$/ do |message|
  output.messages.should include(message)
end

#place
Given /^the position "([0-4][0-4][NESW])"$/ do |position|
  new_robot
  @robot.place(position)
end

#move
Then /^The robot should move one unit forward$/ do
  new_robot
  @robot.move
end

#report
When /^I report the position of the robot$/ do
  new_robot
  @robot.report
end

#left
Then /^the robot should left rotate$/ do
  new_robot
  @robot.left
end

#right
Then /^the robot should right rotate$/ do
  new_robot
  @robot.right
end


class Output
  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end
