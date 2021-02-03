require 'bundler/setup'
require 'json'
require 'time'
require_relative 'schedule'
require_relative 'scheduled_talk'
require_relative 'session'
require_relative 'track'
require_relative 'line_parser'

talks = Schedule.new('talks.txt')
talks.build
