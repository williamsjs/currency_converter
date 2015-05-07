class Currency
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(currency_object)
    if @amount == currency_object.amount && @currency == currency_object.currency
      true
    else
      false
    end
  end

end
