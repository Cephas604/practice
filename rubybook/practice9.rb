=begin
#9-1
module ChocolateChip
  def chocolate_chip
    @name += "チョコレートチップ"
  end
end
class Drink
  include ChocolateChip
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
end
drink = Drink.new("モカ")
drink.chocolate_chip
puts drink.name
#9-2
module EspressoShot
  Price = 100
end
puts EspressoShot::Price
#9-3
require_relative "practice9-3"
puts WhippedCream.info
=end
