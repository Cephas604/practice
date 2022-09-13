=begin
# 7-1
def order
  puts "カフェラテをください"
end
order

#7-2
def area
  3 * 3
end
puts area
def dice
  [1, 2, 3, 4, 5, 6].sample
end
puts dice

#7-3
def order(text)
  "#{text}をください"
end
puts order("カフェラテ")
puts order("モカ")
def dice
  num = [1, 2, 3, 4, 5, 6].sample
  puts num
  if num != 1
    return num
  end
  puts "もう１回"
  [1, 2, 3, 4, 5, 6].sample 
end
puts dice

#7-4
def price(item:, size: "ショート")
  items = { "コーヒー" => 300, "カフェラテ" => 400 }
  sizes = { "ショート" => 0, "トール" => 50, "ベンティ" => 100 }
  items[item] + sizes[size]
end
puts price(item: "コーヒー")
puts price(item: "カフェラテ")

#7-5
def order
  drink = "コーヒー"
  puts"#{drink}をください"
end
order
=end
