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
      currency_object.error
    end
  end

  def subtract(currency_object)
    if @currency == currency_object.currency
      @total -= currency_object.total
    else
      currency_object.error
    end
  end

  def multiply(currency_object)
    if @currency == currency_object.currency
      @total = @total.to_f
      @total *= currency_object.total.to_f
    else
      currency_object.error
    end
  end

  def error
    puts "DifferentCurrencyCodeError"
  end

end
