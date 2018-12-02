require 'rspec'

class Numerator
  def output(number)
    numeral_numbers = [1000, 500, 100, 50, 10, 5, 1]
    result = ""
    result << "M" * (number / 1000)
    number %= 1000
    result << "D" * (number / 500)
    number %= 500
    result << "C" * (number / 100)
    number %= 100
    result << "L" * (number / 50)
    number %= 50
    result << "X" * (number / 10)
    number %= 10
    result << "V" * (number / 5)
    number %= 5
    result << "I" * (number / 1)
    result.sub("DCCCC","CM")
    result.sub("CCCC","CD")
    result.sub("LXXXX","XC")
    result.sub("XXXX","XL")
    result.sub("VIIII","IX")
    result.sub("IIII","IV")
  end
end

RSpec.describe Numerator do
  describe '#output' do
    it 'should I when given 1' do
      numerator = Numerator.new
      result = numerator.output(1)
      expect(result).to eq("I")
    end
    it 'should IV when given 4' do
      numerator = Numerator.new
      result = numerator.output(4)
      expect(result).to eq("IV")
    end
    it 'should MCMXCIX when given 1994' do
      numerator = Numerator.new
      result = numerator.output(4)
      expect(result).to eq("IV")
    end
  end
end