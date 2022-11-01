require 'pry'
class CashRegister
    attr_accessor :discount, :total, :last_transaction
    attr_reader :items

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        if quantity != nil
            self.last_transaction = price * quantity
            self.total += self.last_transaction
                quantity.times do 
                @items << title
            end
        else
        self.total= @total + price
        end


    end

    def apply_discount
        if self.discount != 0
            self.total= @total - @total * discount/100
            "After the discount, the total comes to $#{self.total}."

        else
            "There is no discount to apply."
           
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction
    end
end
