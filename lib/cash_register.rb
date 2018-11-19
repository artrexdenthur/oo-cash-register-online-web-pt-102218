class CashRegister
  
  attr_accessor :total :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
  end
  
  def add_item(item, price, quantity = 1)
    total += price * quantity
  end
  
  def apply_discount
    total -= discount
    puts "After the discount, the total comes to #{total}."
  end
  
end
