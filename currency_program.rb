require './currency_converter.rb'
require './currency.rb'
require './currency_trader.rb'

us_1 = Currency.new(15, :USD)
us_2 = Currency.new(10, :USD)
us_3 = Currency.new(18, :USD)


jpn_1 = Currency.new(800, :JPN)
jpn_1 = Currency.new(1000, :JPN)
jpn_1 = Currency.new(1100, :JPN)

euro_1 = Currency.new(10, :EUR)
euro_2 = Currency.new(8, :EUR)
euro_3 = Currency.new(15, :EUR)

jan_rate = CurrencyConverter.new({USD: 1.0, EUR: 1.3, JPN: 400})
aug_rate = CurrencyConverter.new({USD: 0.25, EUR: 0.3, JPN: 900})

trade_1 = CurrencyTrader.new(jan_rate, aug_rate, us_1)


trade_1.best_investment
