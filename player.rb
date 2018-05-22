class Player
  attr_reader :name
  attr_reader :score
  def initialize(name)
    @name = name
    @score = 3
  end

  def subtract_point
    @score -= 1
  end
end
