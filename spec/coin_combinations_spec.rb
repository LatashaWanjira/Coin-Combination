require('rspec')
require('pry')
require('./lib/coin_combinations.rb')

describe('Fixnum#coin_combinations') do
  it('returns the number of quaters in a given input of cents') do
    expect((100).coin_combinations()).to(eq([0, 0, 0, 4]))
  end
  it('returns the number of dimes in a given input of cents') do
    expect((70).coin_combinations()).to(eq([0, 0, 2, 2]))
  end
  it('returns the number of nickels in a given input of cents') do
    expect((41).coin_combinations()).to(eq([1, 1, 1, 1]))
  end
  it('returns the number of pennies in a given input of cents') do
    expect((13).coin_combinations()).to(eq([3, 0, 1, 0]))
  end
end
