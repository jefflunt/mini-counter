$LOAD_PATH.unshift './lib'

require 'pp'
require 'reader'
require 'counter'
require 'event'
require 'event_log'

counts = Counter.new
events = EventLog.new

loop do
  raw_event = Reader.read
  event = Reader.parse(raw_event)

  events.log(raw_event, event)
  counts.count(event)
  pp events
  pp counts
end
