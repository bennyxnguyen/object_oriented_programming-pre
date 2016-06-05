class Rover

attr_accessor :x_coordinate, :y_coordinate, :direction

  def initialize(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end


  def read_instruction(instructions)
    instructions.each do |input|
      if input == "L" || input == "R"
      turn(input)
    else input == "M"
        move
      end
    end
  end


  def turn(turn_direction)
    if (direction = "N" && command == "L") || (direction = "S" && command == "R")
      @direction = "W"
    elsif (direction = "E" && command == "L") || (direction = "W" && command == "R")
      @direction = "N"
    elsif (direction = "W" && command == "L") || (direction = "E" && command == "R")
      @direction = "S"
    elsif (direction = "S" && command == "L") || (direction = "N" && command == "R")
      @direction = "E"
    end

  end


  def move
    if direction  == "N"
      @y_coordinate += 1
    elsif direction == "S"
      @y_coordinate -= 1
    elsif direction == "E"
      @x_coordinate += 1
    elsif direction == "W"
      @x_coordinate -= 1
    end
  end


end




  def status "The rover is currently #{position_x}, #{position_y}"
