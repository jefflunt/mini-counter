module Reader
  def self.read
    gets
  end

  def self.parse(raw_event)
    raw_event.strip.split(' ', 2)
  end
end
