require 'optparse'

def to_hex(r,g,b)
  hex = '#'
  [r,g,b].sum('#') do |n|
  sprintf("%#x", n).delete("0x").rjust(2,'0')
  end
end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex).join(',')
end

options = ARGV.getopts('h:i:',
'h(hex) --  convert from integer to hexadecimal.',
'i(ints) -- convert from hexadecimal to integer.')
unless options['h'].nil?
  r,g,b = options['h'].split(',')
  puts to_hex(r,g,b)
end
puts to_ints(options['i']) unless options['i'].nil?
