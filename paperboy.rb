class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    @quota = ((experience / 2).to_1) + 50
end
