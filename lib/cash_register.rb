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

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total*(1-@discount)
      "After the discount, the total comes to $#{@total}."
    end
  end
end
