# frozen_string_literal: true

require_relative 'string'

class Peg
  attr_reader :number, :representation

  COLOR_HASH = {
    1 => ' 1 '.red,
    2 => ' 2 '.green,
    3 => ' 3 '.brown,
    4 => ' 4 '.blue,
    5 => ' 5 '.magenta,
    6 => ' 6 '.cyan,
    :strong_match => '  '.black,
    :weak_match => '  '.gray
  }.freeze

  def initialize(type)
    @type = type
    @number = type == :number ? Random.rand(1...6) : nil
    @representation = COLOR_HASH[@number || @type]
  end

  def print
    puts @representation
  end
end
