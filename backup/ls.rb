# frozen_string_literal: true
ROWS = 3
filepath = '.'
file_names = Dir.glob("#{filepath}/*").map { |path| path.split('/')[-1] }

file_length_max = file_names.map(&:size).max
group_size = file_names.size / ROWS + 1

file_groups = file_names.map { |file_name| file_name.ljust(file_length_max) }.each_slice(group_size).to_a

(0..group_size).each do |gs|
  (0..ROWS - 1).each do |row|
    print "#{file_groups[row][gs]} "
  end
  puts ''
end
