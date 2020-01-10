class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount

  ITEMS = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(name, price, quantity = 1)
    quantity.times do
      ITEMS << name
      @total += price
    end
  end

end
