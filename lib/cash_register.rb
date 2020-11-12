



class CashRegister

    def initialize(discount=0)
        @total = 0.to_f
        @discount = discount.to_f
        @items = []
        @prices = []
    end

    attr_accessor :total, :items, :discount, :prices

    def add_item(title, price, quantity=1)
        quantity.times do
            self.items << title
            self.total += price
            self.prices << [price, quantity]

        end
    end

    def apply_discount

        if self.discount == 0 || self.discount == 0.0
            "There is no discount to apply."
        else
            disc_tot = self.total * ((100 - self.discount) / 100)
            self.total = disc_tot
            "After the discount, the total comes to $#{disc_tot.to_i}."
        end

    end

    def void_last_transaction
        self.total = (self.total - (self.prices[-1][0])*(self.prices[-1][1]))
    end


        







end

