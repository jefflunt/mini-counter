def deep_copy(hash)
  Marshal.load(Marshal.dump(hash))
end

def whole_number?(s)
  s =~ /\A[0-9]+\Z/
end

def read
  gets.strip.split(' ', 2)
end

def count(num, event, counts)
  if whole_number?(num)
    num = num.to_i
    counts = deep_copy(counts)
    counts[event] ||= 0
    counts[event] += num
    puts "COUNTED: #{num} #{event}"
  else
    counts['errors'] ||= []
    counts['errors'] << "#{num} #{event}"

    puts "ERRORED: #{num} #{event}"
  end

  counts
end

counts = {}

loop do
  counts = count(*read, counts)
end
