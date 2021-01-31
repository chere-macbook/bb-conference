require 'time'

class Schedule
  attr_accessor :tracks
  attr_reader :talks

  def initialize(talk_file)
    @talks_json = File.read("#{Dir.pwd}/data/#{talk_file}")
    @talks = @talks_json.split(/\n/).map do |line|
      LineParser.new(line)
    end
    @tracks = []
  end

  def build
    schedule_talks
  end

  private

  def schedule_talks
    tracks.clear << Track.new

    sorted_talks.each_with_index do |talk, _i|
      scheduled = false

      tracks.each do |track|
        break if scheduled

        scheduled = true if track.schedule_talk(talk)
      end

      tracks << Track.new.tap { |t| t.schedule_talk(talk) } unless scheduled
    end

    print_schedule
  end

  def sorted_talks
    talks.sort { |a, b| a.duration <=> b.duration }.reverse
  end

  def print_schedule
    tracks.to_a.each_with_index do |track, index|
      puts '' if index > 0
      puts "Track #{index + 1}"
      track.morning.scheduled_talks << '12:00PM Lunch'
      track.afternoon.scheduled_talks << '05:00PM Networking Event'
      track.morning.scheduled_talks.each { |talk| puts talk }
      puts ''
      track.afternoon.scheduled_talks.each { |talk| puts talk }
    end
  end
end
