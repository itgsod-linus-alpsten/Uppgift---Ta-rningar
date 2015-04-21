class Dice
  attr_reader :value
  def initialize(sides:)
    @sides = sides
    if @sides < 2
      raise ArgumentError
    end
    @value = 1
  end
  def roll
    return @value = rand(1..@sides)
  end
  #def value
  #  return @value
  #end
end


dice = Dice.new(sides:42)

i = 1000
sum = 0
i.times do
  sum += dice.roll
end
avg = sum/i
p avg