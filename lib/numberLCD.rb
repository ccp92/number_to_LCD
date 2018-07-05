# frozen_string_literal: true

class Display
  def initialize
    @top_of_number = { 1 => '   ', 2 => ' _ ', 3 => ' _ ', 4 => '   ', 5 => ' _ ', 6 => ' _ ', 7 => ' _ ', 8 => ' _ ', 9 => ' _ ', 0 => ' _ ' }
    @middle_of_number = { 1 => '  |', 2 => ' _|', 3 => ' _|', 4 => '|_|', 5 => '|_ ', 6 => ' _|', 7 => '  |', 8 => '|_|', 9 => '|_|', 0 => '| |' }
    @bottom_of_number = { 1 => '  |', 2 => '|_ ', 3 => ' _|', 4 => '  |', 5 => ' _|', 6 => '|_|', 7 => '  |', 8 => '|_|', 9 => ' _|', 0 => '|_|' }
  end

  def convert(digits)
    number_of_digits = digits.to_s.length
    if number_of_digits == 1
      return @top_of_number[digits] + "\n" + @middle_of_number[digits] + "\n" + @bottom_of_number[digits]
    else
      return "    _ \n  | _|\n  ||_ " if digits == 12
      " _  _ \n _| _|\n|_  _|"
    end
  end
end
