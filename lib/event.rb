class Event
  attr_reader :num
  attr_reader :name

  def initialize(num, name)
    @num, @name = num, name
  end
end
