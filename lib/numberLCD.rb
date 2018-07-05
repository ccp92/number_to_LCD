# frozen_string_literal: true

class Display
  def convert(digits)
    return "   \n | \n | " if digits == 1
    return " _ \n _|\n|_ " if digits == 2
    return " _ \n _|\n _|" if digits == 3
    return "   \n|_|\n  |" if digits == 4
    return " _ \n|_ \n _|" if digits == 5
    return " _ \n _|\n|_|" if digits == 6
    return " _ \n  |\n  |" if digits == 7
    return " _ \n|_|\n|_|" if digits == 8
    return " _ \n|_|\n _|" if digits == 9
    return " _ \n| |\n|_|" if digits.zero?
    "   \n | \n | "
  end
end
