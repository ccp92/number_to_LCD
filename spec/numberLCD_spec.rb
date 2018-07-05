# frozen_string_literal: true

require 'numberLCD'

describe Display do
  let(:display)  { Display.new }
  context 'single digits outputs' do
    context 'given an input of 1' do
      it 'returns an LCD version of 1' do
        conversion(1, "   \n | \n | ")
      end
    end

    context 'given an input of 2' do
      it 'returns an LCD version of 2' do
        conversion(2, " _ \n _|\n|_ ")
      end
    end

    context 'given an input of 3' do
      it 'returns an LCD version of 3' do
        conversion(3, " _ \n _|\n _|")
      end
    end

    context 'given an input of 4' do
      it 'returns an LCD version of 4' do
        conversion(4, "   \n|_|\n  |")
      end
    end

    context 'given an input of 5' do
      it 'returns an LCD version of 5' do
        conversion(5, " _ \n|_ \n _|")
      end
    end

    context 'given an input of 6' do
      it 'returns an LCD version of 6' do
        conversion(6, " _ \n _|\n|_|")
      end
    end

    context 'given an input of 7' do
      it 'returns an LCD version of 7' do
        conversion(7, " _ \n  |\n  |")
      end
    end

    context 'given an input of 8' do
      it 'returns an LCD version of 8' do
        conversion(8, " _ \n|_|\n|_|")
      end
    end

    context 'given an input of 9' do
      it 'return an LCD version of 9' do
        conversion(9, " _ \n|_|\n _|")
      end
    end

    context 'given an input of 0' do
      it 'returns an LCD version of 0' do
        conversion(0, " _ \n| |\n|_|")
      end
    end
  end

  private

  def conversion(digits, output)
    expect(display.convert(digits)).to eq(output)
  end
end
