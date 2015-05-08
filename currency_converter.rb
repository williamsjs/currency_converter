class CurrencyConverter

  def initialize
    @world_currencies = {USD: 1.0,
                        EUR: 0.89,
                        JPN: 119.77}
  end

  # def convert(currency_object, currency_code)
  #   if currency_object.currency == currency_code
  #     Currency.new(currency_object.total, currency_code)
  #   else
  #     error
  #   end
  # end

  def value
    @world_currencies[:USD].class
  end


  def convert(currency_object, requested_currency)
    if currency_object.currency == requested_currency
      currency_object
    elsif !@world_currencies.has_key?(currency_object.currency)
      puts "#{currency_object.currency} doesn't exist"
    else
      first_calc = currency_object.total / @world_currencies[currency_object.currency]
      second_calc = first_calc * @world_currencies[requested_currency]
    end
  end

  def currency(requested_currency)
    puts @world_currencies[requested_currency]
    @world_currencies[requested_currency]
  end



  def error
    "DifferentCurrencyCodeError"
  end

end
