require 'pp'

def read
  parts = gets.strip.split(' ')
  [parts[0], parts[1].to_i]
end

counts = {}

loop do
  event, num = read
  counts[event] ||= 0
  counts[event] += num

  puts "COUNTED: #{event} #{num}"
  pp counts
end
