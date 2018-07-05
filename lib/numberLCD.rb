# frozen_string_literal: true

class Display
  def initialize
    @top_of_number = { 1 => '   ', 2 => ' _ ', 3 => ' _ ', 4 => '   ', 5 => ' _ ', 6 => ' _ ', 7 => ' _ ', 8 => ' _ ', 9 => ' _ ', 0 => ' _ ' }
    @middle_of_number = { 1 => '  |', 2 => ' _|', 3 => ' _|', 4 => '|_|', 5 => '|_ ', 6 => ' _|', 7 => '  |', 8 => '|_|', 9 => '|_|', 0 => '| |' }
    @bottom_of_number = { 1 => '  |', 2 => '|_ ', 3 => ' _|', 4 => '  |', 5 => ' _|', 6 => '|_|', 7 => '  |', 8 => '|_|', 9 => ' _|', 0 => '|_|' }
  end

  def convert(digits)
    array_of_digits = digits.to_s.split('').map(&:to_i)
    number_of_digits = array_of_digits.length

    "#{top_row_builder(array_of_digits, number_of_digits)}\n#{middle_row_builder(array_of_digits, number_of_digits)}\n#{bottom_row_builder(array_of_digits, number_of_digits)}"
  end

  def top_row_builder(array_of_digits, number_of_digits)
    top_row = ''
    i = 0
    while i < number_of_digits
      top_row += @top_of_number[array_of_digits[i]]
      i += 1
    end
    top_row
  end

  def middle_row_builder(array_of_digits, number_of_digits)
    middle_row = ''
    i = 0
    while i < number_of_digits
      middle_row += @middle_of_number[array_of_digits[i]]
      i += 1
    end
    middle_row
  end

  def bottom_row_builder(array_of_digits, number_of_digits)
    bottom_row = ''
    i = 0
    while i < number_of_digits
      bottom_row += @bottom_of_number[array_of_digits[i]]
      i += 1
    end
    bottom_row
  end
end
