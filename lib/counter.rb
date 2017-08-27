class Counter
  def self.whole_number?(s)
    s =~ /\A[0-9]+\Z/
  end

  def initialize
    @counts = {}
  end

  def count(num, event)
    if Counter.whole_number?(num)
      num = num.to_i
      @counts[event] ||= 0
      @counts[event] += num
      puts "COUNTED: #{num} #{event}"
    else
      @counts['errors'] ||= []
      @counts['errors'] << "#{num} #{event}"

      puts "ERRORED: #{num} #{event}"
    end
  end
end
