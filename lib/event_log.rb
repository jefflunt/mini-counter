class EventLog
  def initialize
    @events = []
  end

  def log(raw_event)
    @events << [Time.now.utc, raw_event]
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
end
