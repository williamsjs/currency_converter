require './currency_converter.rb'
require './currency.rb'

us_dollars_15 = Currency.new(15, :USD)
jpn_yen_700_ = Currency.new(700, :JPN)
euros_25 = Currency.new(25, :EUR)

conversion_rate_1 = CurrencyConverter.new({USD: 1, EUR: 0.8, JPN: 400})

puts conversion_rate_1.convert(us_dollars_15, :ER)
