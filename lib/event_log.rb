class EventLog
  def initialize
    @events = []
  end

  def log(raw_event, event)
    @events << [Time.now.utc, raw_event, event]
  end

  def last_minute_by_second(event=nil)
    earliest_time = Time.now.utc - 60
    report = {}

    @events.each do |e|
      break if e[0] < earliest_time

      report[e[0].to_s] ||= 0
      report[e[0].to_s] += e[2].num if e[2].name.eql?(event)
    end

    report
  end

  def last_hour_by_minute(event=nil)
  end

  def last_day_by_hour(event=nil)
  end

  def last_7_days_by_day(event=nil)
  end

  def last_30_days_by_day(event=nil)
  end

  def last_year_by_week(event=nil)
  end

  def last_year_by_month(event=nil)
  end

  def custom_range_by_day(start_date, end_date, event)
  end
end
