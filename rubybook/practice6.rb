=begin
# 6-1
menu = {coffee: 300, cafe_latte: 400}
p menu[:cafe_latte]
menu = {"モカ" => "チョコレートシロップとミルク入り", "カフェラテ" => "ミルク入り"}
p menu["モカ"]

# 6-2
menu = {coffee: 300, cafe_latte: 400}
menu[:tea] = 300
p menu
menu.delete(:coffee)
p menu
menu.delete(:tea)
menu.default = "紅茶はありませんか？"
p menu[:tea]
menu = {coffee: 300, cafe_latte: 400}
if menu[:cafe_latte] <= 500
  puts "カフェラテください"
end
chars_hash = {}
text = "caffelatte"
text.chars.each do |char|
  chars_hash[char] = 0
end
text.chars.each do |char|
  chars_hash[char] += 1
end
chars_hash.each do |key, value|
  puts "#{key}は#{value}回"
end

# 6-3
menu = {"コーヒー" => 300, "カフェラテ" => 400}
menu.each do |key, value|
  if value >= 350
    puts "#{key} - #{value}円"
  end
end
menu_array = []
menu.each_key do |key|
  menu_array.unshift(key)
end
p menu_array
=end

