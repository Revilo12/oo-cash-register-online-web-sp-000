class CashRegister
  attr_accessor :discount, :last_transaction_amount

  def initialize(discount = 0)
    @discount = discount
  end

end
