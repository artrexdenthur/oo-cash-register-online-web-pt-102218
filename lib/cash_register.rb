require 'pry'
class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items << item
  end
  
  def apply_discount
    if @discount
      @total -= (@discount/100.0 * @total).to_i
      return "After the discount, the total comes to #{@total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
end
