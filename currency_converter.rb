class CurrencyConverter

  def initialize
    @world_currencies = {USD: 1.0,
                        EUR: 0.89,
                        JPN: 119.77}
  end

  def convert(currency_object, currency_code)
    if currency_object.currency == currency_code
      Currency.new(currency_object.total, currency_code)
    else
      error
    end
  end

  def error
    "DifferentCurrencyCodeError"
  end

end
