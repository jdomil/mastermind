# frozen_string_literal: true

require_relative 'mastermind'

puts 'WELCOME TO MASTERMIND'
puts

mastermind = Mastermind.new

puts '-------------------------' until mastermind.game_over?
