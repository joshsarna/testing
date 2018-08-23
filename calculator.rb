require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend.to_f / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end
  describe '#subtract' do
    it 'should return the difference between two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(5,1)
      expect(result).to eq(4)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(5,7)
      expect(result).to eq(35)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(6,3)
      expect(result).to eq(2)
    end

    it 'should return the quotient of two numbers that are not divisible' do # this will error because dividing integers yields whole numbers and disregards remainders; the numbers could be converted to decimals, or the remainder could be got and expressed as the numerator of a fraction with the denominator as the divisor
      calculator = Calculator.new
      result = calculator.divide(5,2)
      expect(result).to eq(2.5)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do # this will error because 'square' is used instead of 'number'
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
  end
  describe '#power' do
    it 'should return the one number to the power of another' do
      calculator = Calculator.new
      result = calculator.power(5,3)
      expect(result).to eq(125)
    end
  end
end

# to add in after first test