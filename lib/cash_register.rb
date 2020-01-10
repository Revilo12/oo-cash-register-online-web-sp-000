require 'pry'

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
      @total = @total*self.discount_to_percent
      "After the discount, the total comes to $#{@total}."
    end
  end

  def discount_to_percent #returns the amount to multiply the total by
    inverse = 100 - @discount
    inverse = inverse.to_f
    inverse = inverse/100
    inverse
    binding.pry
  end

end
