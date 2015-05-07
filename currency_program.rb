require './currency_converter.rb'
require './currency.rb'

amount_1 = Currency.new(25, :USD) # creates instance of currency class
amount_2 = Currency.new(25, :USD) #creates instance of currencyconverter class

puts amount_2.amount
puts amount_1.amount
puts amount_1.currency
puts amount_2.currency

puts amount_1 == amount_2
