class Counter
  def initialize
    @counts = {}
  end

  def count(e)
    @counts[e.name] ||= 0
    @counts[e.name] += e.num
  end
end
