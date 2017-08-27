module Reader
  def self.read
    gets
  end

  def self.parse(raw_event)
    num, name = raw_event.strip.split(' ', 2)
    Event.new(num.to_i, name)
  end
end
