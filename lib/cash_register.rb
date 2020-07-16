require 'pry'
class CashRegister
    attr_accessor :total, :discount, :cost, :item
    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @item = []
    end

    def add_item(item, cost, quantity = 1)
        i = 0
        @cost = cost
        @total += (cost * quantity)
        while i < quantity do
            @item << item
            i += 1
        end
        #binding.pry
    end

    def apply_discount
        if @discount == 20
            @total *= 0.8
            totalAsInt = @total.to_i
            return "After the discount, the total comes to $#{totalAsInt}."
        elsif 
            @discount == 0
            return "There is no discount to apply."
        end
    end

    def items
        item
    end

    def void_last_transaction
        # binding.pry
        preAmt = 0
        @total -= @cost
        removedItem = @item.pop
        if item.include?(removedItem)
            others = item.count(removedItem)
            @total -= others * @cost
        end
        if @item.empty?
            @total = 0
        end
        @item = []
    end

end