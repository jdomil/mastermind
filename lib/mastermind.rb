# frozen_string_literal: true

require_relative 'player'
require_relative 'code'

NUMBER_OF_ATTEMPTS = 8

class Mastermind
  attr_reader :code

  def initialize
    @player = Player.new
    @code = Code.new
    @remaining_misses = NUMBER_OF_ATTEMPTS
  end

  def turn
    guess = @player.submit_guess
    if guess == @code.code_array
      true
    else
      @remaining_misses -= 1
      @code.print_key(guess)
      puts 'Remaining attempts: ' + @remaining_misses.to_s
      false
    end
  end

  def win?
    if turn == true
      puts 'You win!'
      puts
      @code.print_code
      true
    else
      false
    end
  end

  def lose?
    if @remaining_misses <= 0
      puts 'You lose'
      puts
      @code.print_code
      true
    else
      false
    end
  end

  def game_over?
    win? || lose?
  end
end
