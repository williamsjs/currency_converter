require './currency_converter.rb'
require './currency.rb'

japan_amount_1 = Currency.new(500, :JPN) # creates instance of currency class
american_amount_1 = Currency.new(1, :USD) #creates instance of currencyconverter class

puts american_amount_1
puts japan_amount_1

conversion = CurrencyConverter.new

puts conversion.convert(japan_amount_1, :EUR)
