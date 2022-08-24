require 'optparse'

UNITS = { m: 1.0, ft: 3.28, in: 39.37 }
def convert_length(length, from: :m, to: :m)
  (length / UNITS[from] * UNITS[to]).round(2)
end

options = ARGV.getopts('l:f:t:',
'l(length) -- put numbers.',
'f(from) -- convert units from. select m(meter), ft(feet), or in(inch).',
't(to) -- convert units to. select m(meter), ft(feet), or in(inch).')
puts convert_length(options['l'].to_f, from: options['f'].to_sym, to: options['t'].to_sym)
