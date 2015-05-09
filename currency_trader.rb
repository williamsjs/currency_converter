class CurrencyTrader
  attr_reader :converter_1, :converter_2, :starting_currency

  def initialize(converter_1, converter_2, starting_currency)
    @converter_1 = converter_1
    @converter_2 = converter_2
    @starting_currency = starting_currency
  end

  def best_investment
    values = []
    first_conversion(values)
    finals = second_conversion(values)
    numbers = final_conversion(finals)
    largest_return = numbers.max
    values.each do |item|
      final = converter_2.convert(item, @starting_currency.currency)
      if final.total == largest_return
        return "Best Currency to transfer to is #{item.currency}"
      end
    end
  end

  def first_conversion(values)
    converter_1.world_currencies.each do |key, value|
      current_currency = @converter_1.convert(@starting_currency, key)
      values.push(current_currency)
    end
    values
  end

  def second_conversion(values)
    finals = []
    values.each do |item|
      final = converter_2.convert(item, @starting_currency.currency)
      finals.push(final)
    end
    finals
  end

  def final_conversion(finals)
    numbers = []
    finals.each do |item|
      numbers.push(item.total)
    end
    numbers
  end

end
