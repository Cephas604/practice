chars_hash = {}
x = gets
text = x.chars.sort - ["\n"]
text.each do |char|
  chars_hash[char] = 0
end
text.each do |char|
  chars_hash[char] += 1
end
chars_hash.each do |key, value|
  puts "#{key}は#{value}回"
end
