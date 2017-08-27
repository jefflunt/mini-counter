require 'pp'

#def deep_copy(hash)
#  Marshal.load(Marshal.dump(hash))
#end

def whole_number?(s)
  s =~ /\A[0-9]+\Z/
end

def read
  gets
end

def parse(s)
  s.strip.split(' ', 2)
end

def log(s, events)
  events << [Time.now.utc, s]
end

def count(num, event, counts)
  if whole_number?(num)
    num = num.to_i
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

def last_minute_by_second
end

def last_hour_by_minute
end

def last_day_by_hour
end

def last_7_days_by_day
end

def last_30_days_by_day
end

def last_year_by_week
end

def last_year_by_month
end

def custom_range_by_day(start_date, end_date)
end

counts = {}
events = []

loop do
  s = read
  num, event = parse(s)
  log(s, events)
  counts = count(num, event, counts)
  pp events
  pp counts
end
