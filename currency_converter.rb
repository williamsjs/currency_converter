class CurrencyConverter
  attr_reader :created_currency

  def initialize
    @world_currencies = {USD: 1.0,
                        EUR: 0.89}
    @created_currency = ''
  end

  def convert(currency_object, currency_code)
    @world_currencies.each do |key, value|
      if currency_object.currency == key
        @created_currency = Currency.new(currency_object.total, currency_object.currency)
      end
    end
  end

end
