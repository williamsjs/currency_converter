class CurrencyTrader
  attr_reader :converter_1, :converter_2, :starting_currency

  def initialize(converter_1, converter_2, starting_currency)
    @converter_1 = converter_1
    @converter_2 = converter_2
    @starting_currency = starting_currency
  end

  def to_s
    puts "first conversion is #{@converter_1}"
    puts "second conversion is #{@converter_2}"
    puts "starting currency is #{@starting_currency}"
  end

  def best_investment
    #should return currency

  end

  #converter_1
end
