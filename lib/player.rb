# frozen_string_literal: true

class Player
  def submit_guess
    puts 'Enter your code guess separated by spaces, like 1 2 3 4:'
    puts
    gets.chomp.split(' ')
  end
end
