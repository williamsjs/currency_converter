class CurrencyConverter
  attr_reader :world_currencies

  def initialize(world_currencies)
      @world_currencies = world_currencies
  end

  def convert(currency_object, requested_currency)
    if currency_object.currency == requested_currency
      return Currency.new(currency_object.total, currency_object.currency)
    elsif !world_currencies.has_key?(currency_object.currency) || !world_currencies.has_key?(requested_currency)
      unknown
    else
      first_calc = currency_object.total / world_currencies[currency_object.currency]
      second_calc = first_calc * world_currencies[requested_currency]
      return Currency.new(second_calc, requested_currency)
    end
  end

  def unknown
    raise "UnknownCurrencyCodeError"
  end

end
