# frozen_string_literal: true

class String
  def black
    "\e[40m#{self}\e[0m"
  end

  def red
    "\e[41m#{self}\e[0m"
  end

  def green
    "\e[42m#{self}\e[0m"
  end

  def brown
    "\e[43m#{self}\e[0m"
  end

  def blue
    "\e[44m#{self}\e[0m"
  end

  def magenta
    "\e[45m#{self}\e[0m"
  end

  def cyan
    "\e[46m#{self}\e[0m"
  end

  def gray
    "\e[47m#{self}\e[0m"
  end
end
