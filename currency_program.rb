require './currency_converter.rb'
require './currency.rb'

us_dollars_15 = Currency.new(15, :USD)
jpn = Currency.new(700, :JPN)
euros_25 = Currency.new(25, :EUR)

conversion_rate_1 = CurrencyConverter.new({USD: 1, EUR: 0.8, JPN: 400})

new_value = conversion_rate_1.convert(us_dollars_15, :EUR)
puts new_value

newer_value = conversion_rate_1.convert(jpn, :EUR)
puts newer_value
