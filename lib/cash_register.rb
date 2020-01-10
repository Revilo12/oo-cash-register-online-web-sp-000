class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

end
