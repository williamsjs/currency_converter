class CurrencyConverter
  attr_reader :world_currencies

  def initialize(world_currencies)
    @world_currencies = world_currencies
  end


  def value
    @world_currencies[:USD].class
  end


  def convert(currency_object, requested_currency)
    if currency_object.currency == requested_currency
      currency_object.total.to_f
    elsif !@world_currencies.has_key?(currency_object.currency) || !@world_currencies.has_key?(requested_currency)
      unknown
    else
      first_calc = currency_object.total.to_f / @world_currencies[currency_object.currency].to_f
      puts first_calc
      second_calc = first_calc.to_f * @world_currencies[requested_currency].to_f
    end
  end

  def currency(requested_currency)
    puts @world_currencies[requested_currency]
    @world_currencies[requested_currency]
  end



  def unknown
    "UnknownCurrencyCodeError"
  end

end
