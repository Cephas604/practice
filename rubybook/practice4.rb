=begin
# 4-1
p ["カフェラテ", "コーヒー"]

# 4-2
drinks = ["コーヒー", "カフェラテ", "モカ"]
puts drinks
puts drinks[1]
puts drinks.first
puts drinks.last

# 4-3
drinks = ["コーヒー", "カフェラテ"]
drinks.push "モカ"
puts drinks
numbers = [2, 3]
numbers.unshift 1
puts numbers
a1 = [1, 2]
a2 = [3, 4]
puts a1 + a2

# 4-4
drinks = ["ティーラテ", "カフェラテ", "抹茶ラテ"]
drinks.each do |drink|
  puts drink + "お願いします"
end
numbers = [1, 2, 3]
sum = 0
numbers.each do |number|
  puts sum += number
end
drinks = []
drinks.each do |drink|
  puts drink
end
=end
