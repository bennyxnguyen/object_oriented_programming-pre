class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  def initialize(name, side)
    @name = name
    @quota = 50
    @experience = 0
    @side = side
    @earnings = 0
  end

  def quota
    @quota = ((@experience / 2).to_i) + 50
  end

  def deliver(start, finish)
    deliveries = (finish - start)/2
    @experience = @experience + deliveries
    @earnings = @earnings + deliveries * 0.25.to_f
    if deliveries > quota
      @earnings = @earnings + (deliveries - @quota) * 0.25.to_f
    elsif deliveries < quota
      @earnings = @earnings - 2.to_f
    end
  end


  def report
    return "I'm #{@name}, I've delivered #{@experience} papers and I've earned #{@earnings} so far!"
  end

end

tommy = Paperboy.new("Tommy", "even")
tommy.quota # => 50
tommy.deliver(100, 220) # => 17.5
tommy.earnings #=> 17.5
puts tommy.report
