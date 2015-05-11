class CurrencyTrader
  attr_reader :conversion_rates, :starting_currency

  def initialize(*conversion_rates, starting_currency)
    @conversion_rates = conversion_rates
    @starting_currency = starting_currency
  end

  def best_investment
    count = 1
    number_on = 0
    while conversion_rates.length > count
    values = []
    first_conversion(values, conversion_rates[number_on])
    finals = second_conversion(values, conversion_rates[number_on + 1])
    numbers = final_conversion(finals)
    largest_return = numbers.max
      values.each do |item|
        final = conversion_rates[number_on + 1].convert(item, starting_currency.currency)
        if final.total == largest_return
          puts "Best Currency to transfer to for currency exchange number: #{count} is #{item.currency}"
        end
      end
      number_on += 1
      count += 1
    end
  end

  def first_conversion(values, conversion)
    conversion.world_currencies.each do |key, value|
      current_currency = conversion.convert(starting_currency, key)
      values.push(current_currency)
    end
    values
  end

  def second_conversion(values, conversion)
    finals = []
    values.each do |item|
      final = conversion.convert(item, starting_currency.currency)
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
