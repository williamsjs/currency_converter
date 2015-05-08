require './currency_converter.rb'
require './currency.rb'

amount_1 = Currency.new(5, :USD) # creates instance of currency class
amount_2 = Currency.new(25, :USD) #creates instance of currencyconverter class

conversion_1 = CurrencyConverter.new

amount_3 = conversion_1.convert(amount_1, :USA)

puts amount_3 == amount_1
