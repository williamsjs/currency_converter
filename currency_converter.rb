class CurrencyConverter

  def initialize
    @world_currencies = {USD: 1.0,
                        EUR: 0.89}
  end

  def convert(currency_object, currency_code)
    Currency.new(currency_object.total, @world_currencies[currency_object.currency])
  end
end
