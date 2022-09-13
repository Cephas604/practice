=begin
# 8-1
p (5).class
p ({:coffee => 300, :caffe_latte => 400}).class
item = Hash.new
p item
# 8-2
class CaffeLatte
end
caffelatte = CaffeLatte.new
p caffelatte.class
# 8-3
class Item
  def name
    "チーズケーキ"
  end
end
item = Item.new
puts item.name
# 8-4
class Item
  def name=(item)
    @name = item
  end
  def name
    @name
  end
end
item = Item.new
item.name = "チーズケーキ"
puts item.name
# 8-5
class Item
  def initialize(item)
    puts "商品を扱うオブジェクト"
    @name = item
  end
  def name
    @name
  end
end
item1 = Item.new("マフィン")
item2 = Item.new("スコーン")
puts item1.name
puts item2.name
# 8-6
class Drink
  def self.todays_special
    "ホワイトモカ"
  end
end
puts Drink.todays_special
# 8-7
class Item
  def name
    @name
  end
  def name=(text)
    @name = text
  end
end
class Food < Item
end
food = Food.new
food.name = "チーズケーキ"
puts food.name
=end
