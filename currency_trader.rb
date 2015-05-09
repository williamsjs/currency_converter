class CurrencyTrader
  attr_reader :converter_1, :converter_2, :starting_currency

  def initialize(converter_1, converter_2, starting_currency)
    @converter_1 = converter_1
    @converter_2 = converter_2
    @starting_currency = starting_currency
  end

  def total(currency_object)
    currency_object = currency_object.total
  end

  def best_investment
    values = 
    converter_1.world_currencies.each do |key, value|
      current_currency = @converter_1.convert(@starting_currency, key)
      puts current_currency.total
    end
  end
end
