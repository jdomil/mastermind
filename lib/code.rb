# frozen_string_literal: true

require_relative 'peg'

class Code
  def initialize
    @pegs = Code.generate_code
  end

  def self.generate_code
    new_code = Array.new(4)
    new_code.map do
      Peg.new(:number)
    end
  end

  def code_array
    @pegs.map do |peg|
      peg.number.to_s
    end
  end

  def assess_guess(guess_array)
    strong_match = 0
    weak_match = 0

    guess_array.each_with_index do |num, index|
      if code_array.include?(num)
        if code_array.index(num) == index
          strong_match += 1
        else
          weak_match += 1 unless guess_array.count(num) > code_array.count(num)
        end
      end
    end

    {
      strong_match: strong_match,
      weak_match: weak_match
    }
  end

  def print_key(code_guess)
    puts
    puts 'Your guess key is:'
    puts

    assess_guess(code_guess).each do |key, value|
      value.times do
        print Peg.new(key).representation + ' '
      end
    end
    puts
    puts
  end

  def print_code
    @pegs.each do |peg|
      print peg.representation + ' '
    end
    puts
  end
end
