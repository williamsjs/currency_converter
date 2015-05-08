require './currency_converter.rb'
require './currency.rb'

us_dollars_15 = Currency.new(15, :USD)
jpn = Currency.new(700, :JPN)
euros_25 = Currency.new(25, :EUR)

conversion_rate = CurrencyConverter.new({USD: 1.0, EUR: 1.3, JPN: 400})


euros_to_jpn = conversion_rate.convert(euros_25, :JPN)

puts euros_to_jpn
