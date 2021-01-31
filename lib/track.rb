class Track
  attr_reader :morning, :afternoon

  def initialize
    @morning = Session.new(max_time: 180, start_time: morning_start_time)
    @afternoon = Session.new(max_time: 240, start_time: afternoon_start_time)
  end

  def schedule_talk(talk)
    if talk.duration <= morning.time_remaining
      morning.schedule_talk(talk)
      return true
    elsif talk.duration <= afternoon.time_remaining
      afternoon.schedule_talk(talk)
      return true
    end

    false
  end

  def scheduled_talks
    morning.scheduled_talks + afternoon.scheduled_talks
  end

  private

  def morning_time_remaining
    morning.time_remaining
  end

  def afternoon_time_remaining
    afternoon.time_remaining
  end

  def morning_start_time
    DateTime.new(session_on.year, session_on.month, session_on.day, 9, 0, 0, session_on.zone)
  end

  def afternoon_start_time
    DateTime.new(session_on.year, session_on.month, session_on.day, 13, 0, 0, session_on.zone)
  end

  def session_on
    DateTime.now + 1
  end
end
