require 'rspec'

class ChangeMachine
  # def change(cents)
  #   coins = []
  #   cents_remaining = cents
  #   while cents_remaining > 0
  #     if cents_remaining >= 25
  #       coins << 25
  #       cents_remaining -= 25
  #     end
  #     if cents_remaining < 25 && cents_remaining >= 10
  #       coins << 10
  #       cents_remaining -= 10
  #     end
  #     if cents_remaining < 10 && cents_remaining > 4
  #       coins << 5
  #       cents_remaining -= 5
  #     end
  #     if cents_remaining < 5 && cents_remaining > 0
  #       coins << 1
  #       cents_remaining -= 1
  #     end
  #   end
  #   return coins
  # end

  def change(cents)
    coin_amounts = [25, 10, 5, 1]
    coins_unsplit = ""
    coin_amounts.each do |coin|
      coins_unsplit << "#{coin}," * (cents / coin)
      cents %= coin
    end
    coins_unsplit.split(',').map { |coin| coin.to_i }
  end
end

RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      result = machine.change(1)
      expect(result).to eq([1])
    end
    it 'should return [1,1] when given 2' do
      machine = ChangeMachine.new
      result = machine.change(2)
      expect(result).to eq([1,1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      result = machine.change(5)
      expect(result).to eq([5])
    end
    it 'should return [5,1] when given 6' do
      machine = ChangeMachine.new
      result = machine.change(6)
      expect(result).to eq([5,1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      result = machine.change(10)
      expect(result).to eq([10])
    end
    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      result = machine.change(25)
      expect(result).to eq([25])
    end
  end
end