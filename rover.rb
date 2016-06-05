class Rover

attr_accessor :position_x, :position_y, :current_direction

  def initialize

  def read_instruction(instructions)
    instructions.each do |command|
      if command == "L" || command == "R"
      turn(command)
      else command == "M"
        move
      end
    end
  end



  def turn(turn_direction)
    if (direction = "N" && command == "L" || direction = "S" && command == "R")
      @direction = "W"
    elsif (direction = "E" && command == "L" || direction = "W" && command == "R")
      @direction = "N"
    elsif (direction = "W" && command == "L" || direction = "E" && command == "R")
      @direction = "S"
    elsif (direction = "S" && command == "L" || direction = "N" && command == "R")
      @direction = "E"
    end

  end


  def move

  end


  def status "The rover is currently #{position_x}, #{position_y}"
