module RobotSimulator
  class Game
    attr_accessor :robot

    def initialize(output)
      @output = output
      @robot = Robot.new(output)
    end

    def start
      @output.puts 'Welcome to Robot Simulator!'
      @output.puts 'Place Robot :'
    end
  end

  class Robot
    attr_accessor :x, :y, :direction

    DIRECTIONS = {"N" => "NORTH", "E" => "EAST", "S" => "SOUTH", "W" => "WEST"}

    def initialize(output)
      @output = output
      self.x = 0
      self.y = 0
      self.direction = 'S'
    end
    def place(pos)
      self.setPosition(pos)

      @output.puts('PLACE ' + self.x.to_s + ',' + self.y.to_s + ',' + DIRECTIONS[self.direction] )
    end

    def command(command)
      case command[0..1] 
      when 'PL'
        self.place(command[6..8])
      when 'MO' 
        self.move
      when 'LE' 
        self.left
      when 'RI'
        self.right 
      when 'RE'
        self.report
      else
        @output.puts 'Incorrect command'
      end
    end

    def move
      if self.direction == 'N' && self.y < 4
	self.y += 1
      elsif self.direction == 'S' && self.y > 0
	self.y -= 1
      elsif self.direction == 'E' && self.x > 0
	self.x -= 1
      elsif self.direction == 'W' && self.x < 4
        self.x += 1
      end
    end

    def right
      tmp = self.direction
      if tmp == 'N'
	dir = 'E'
      elsif tmp == 'E'
	dir = 'S'
      elsif tmp == 'S'
        dir = 'W'
      else
        dir = 'N'
      end
      self.direction = dir
    end

    def left
      tmp = self.direction
      if tmp == 'N'
        dir = 'W'
      elsif tmp == 'W'
        dir = 'S'
      elsif tmp == 'S'
        dir = 'E'
      else
        dir = 'N'
      end
      self.direction = dir
    end

    def report
      @output.puts "Output: #{self.x}, #{self.y}, #{DIRECTIONS[self.direction]}"
    end

    def setPosition(pos)
      if (0..4).include? pos[0].to_i
        self.x = pos[0].to_i
      end
      if (0..4).include? pos[1].to_i
        self.y = pos[1].to_i
      end
      if pos[2].match(/[NESW]/)
        self.direction = pos[2]
      end
    end
  end
end
