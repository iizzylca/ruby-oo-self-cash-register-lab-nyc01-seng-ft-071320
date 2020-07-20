class CashRegister 
    
    attr_accessor :total, :discount, :items
    
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @item_sale = []
      

    end
    
    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
        @item_sale << price * quantity
    end

    def apply_discount 
       @total -= @total * (discount * 0.01)
        if  @discount > 0
            "After the discount, the total comes to $800."
       else @discount <= 0
        "There is no discount to apply."
       end
    end

    def void_last_transaction
        @total = @total - @item_sale.last
    end
end 
