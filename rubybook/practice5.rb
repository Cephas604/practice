=begin
# 5-1
puts ["コーヒー", "カフェラテ"].size
puts [1, 2, 3, 4, 5].sum

# 5-2
puts ["モカ", "カフェラテ", "モカ"].uniq
puts [1, 2, 3].clear

# 5-3
puts ["カフェラテ", "モカ", "カプチーノ"].sample
puts ["大吉","中吉","末吉","凶"].sample

# 5-4
puts [100, 50, 300].sort
puts [100, 50, 300].sort.reverse
puts "cba".reverse

# 5-5
puts [100, 50, 300].join(",")
puts "100,50,300".split(",")

# 5-6
result = [1, 2, 3].map do |x|
  x * 3
end
p result
result = ["abc", "xyz"].map do |text|
  text.reverse
end
p result
result = ["aya", "achi", "Tama"].map do |text|
  text.downcase
end
p result.sort
=end
