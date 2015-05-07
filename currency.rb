class Currency
  attr_reader :total, :currency

  def initialize(total, currency)
    @total = total
    @currency = currency
  end

  def ==(currency_object)
    if @total == currency_object.total && @currency == currency_object.currency
      true
    else
      false
    end
  end

  def add(currency_object)
    if @currency == currency_object.currency
      @total += currency_object.total
    else
      puts "DifferentCurrencyCodeError"
    end
  end

  def subtract(currency_object)
    if @currency == currency_object.currency
      @total -= currency_object.total
    else
      puts "DifferentCurrencyCodeError"
    end
  end

end
