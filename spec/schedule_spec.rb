require 'spec_helper'

RSpec.describe Schedule do
  let(:schedule) { schedule = Schedule.new('talks.txt').build }

  it 'should schedule all talks' do
    scheduled_talks = schedule.reduce(0) do |count, track|
      count += track.scheduled_talks.size
    end

    expect(scheduled_talks).to eq(24)
  end

  it '#to_a returns the schedule in an array' do
    expect(schedule).to be_a(Array)
  end

  it 'properly schedules talks into tracks' do
    expect(schedule.size).to eq(2)
  end

  it "doesn't over fill sessions" do
    expect(schedule[0].scheduled_talks[0].to_s).to eq('09:00AM Implementing a strong code review culture 60 minutes')
  end
end
