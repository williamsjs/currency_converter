class CurrencyTrader
  attr_reader :converter_1, :converter_2, :starting_currency

  def initialize(converter_1, converter_2, starting_currency)
    @converter_1 = converter_1
    @converter_2 = converter_2
    @starting_currency = starting_currency
  end

  def best_investment
    values = []
    converter_1.world_currencies.each do |key, value|
      current_currency = @converter_1.convert(@starting_currency, key)
      values.push(current_currency)
    end
    finals = []
    values.each do |item|
      final = converter_2.convert(item, @starting_currency.currency)
      finals.push(final)
    end
    numbers = []
    finals.each do |item|
      numbers.push(item.total)
    end
    largest_return = numbers.max
    if 
  end
end
