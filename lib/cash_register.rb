
class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount,:cost, :items

  def initialize(discount = 0)
    self.total = 0
    @discount = discount
    @items = []
  end


  def add_item(title,price,quantity = 1)
    if quantity > 1
      count = 0
      while count < quantity
        @items << title
        count +=1
      end
    else
      @items << title #name
    end
      self.total += price*quantity
   # @last_transaction_amount = self.total
   # self.total
    
      end

  def apply_discount
    if @discount > 0
       @discount = @discount/100.to_f
       self.total = self.total - (self.total * (@discount))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end


  def void_last_transaction()
    @last_transaction_amount = self.total-@last_transaction_amount
  end
 end

