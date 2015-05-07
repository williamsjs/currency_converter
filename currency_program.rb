require './currency_converter.rb'
require './currency.rb'

amount_1 = Currency.new(5, :USD) # creates instance of currency class
amount_2 = Currency.new(25, :USD) #creates instance of currencyconverter class

amount_1 * amount_2

puts amount_1.total

amount_1 + amount_2

puts amount_1.total

amount_1 - amount_2

puts amount_1.total
