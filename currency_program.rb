require './currency_converter.rb'
require './currency.rb'
require './currency_trader.rb'

us_dollars_15 = Currency.new(15, :USD)
jpn = Currency.new(700, :JPN)
euros_25 = Currency.new(25, :EUR)

jan_rate = CurrencyConverter.new({USD: 1.0, EUR: 1.3, JPN: 400})
aug_rate = CurrencyConverter.new({USD: 1.0, EUR: 1.4, JPN: 450})

puts jan_rate
puts aug_rate

puts jan_rate.convert(us_dollars_15, :USD)

new_deal = CurrencyTrader.new(jan_rate, aug_rate, :USD)

puts new_deal
