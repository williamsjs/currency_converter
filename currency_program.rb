require './currency_converter.rb'
require './currency.rb'

amount_1 = Currency.new(5, :USD) # creates instance of currency class
amount_2 = Currency.new(25, :USD) #creates instance of currencyconverter class

conversion_1 = CurrencyConverter.new

conversion_1.convert(amount_1, :USD)

puts conversion_1.created_currency.total
puts conversion_1.created_currency.currency
