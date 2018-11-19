class CashRegister
  
  attr_accessor :total :discount
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items_arr = []
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @items_arr << item
  end
  
  def apply_discount
    if discount
      @total -= discount
      puts "After the discount, the total comes to #{total}."
    else
      puts "There is no discount to apply."
    end
  end
  
  
  
end
