class CurrencyConverter
  attr_reader :world_currencies

  def initialize(world_currencies)
      @world_currencies = world_currencies
  end

  def convert(currency_object, requested_currency)
    if currency_object.currency == requested_currency
      currency_object.total.to_f
    elsif !@world_currencies.has_key?(currency_object.currency) || !@world_currencies.has_key?(requested_currency)
      unknown
    else
      first_calc = currency_object.total.to_f / @world_currencies[currency_object.currency].to_f
      second_calc = first_calc.to_f * @world_currencies[requested_currency].to_f
      Currency.new(second_calc, requested_currency)
    end
  end

  def currency(requested_currency)
    puts @world_currencies[requested_currency]
    @world_currencies[requested_currency]
  end

  def unknown
    raise "UnknownCurrencyCodeError"
  end

  def to_s
    "#{@world_currencies}"
  end

end
