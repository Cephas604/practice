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

options = ARGV.getopts('h:i:', 'hex:', 'ints:')
puts options
r,g,b = options['h'].split(',') unless options['h'].nil?
r,g,b = options['hex'].split(',') unless options['hex'].nil?
puts to_hex(r,g,b) unless options['hex'].nil? && options['h'].nil?
puts to_ints(options['i']) unless options['i'].nil?
puts to_ints(options['ints']) unless options['ints'].nil?
