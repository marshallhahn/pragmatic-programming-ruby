class BookInStock
    attr_reader :isbn, :price

    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end

    # Custom attribute method
    # def price_in_cents
    #     Integer(price*100 + 0.5)
    # end

    # Custom attribute method to set price in cents
    # def price_in_cents=(cents)
    #     @price = cents / 100.0
    # end

    # Overwrite the to string method
    # def to_s
    #     "ISBN: #{@isbn}, price: $#{@price}"
    # end

    # attr_reader :isbn
    # def isbn
    #     @isbn
    # end

    # attr_reader :price
    # def price
    #     @price
    # end

    # attr_writer :price
    # def price=(new_price)
    #     @price = new_price
    # end
end

# Examples
# book = BookInStock.new("isbn1", 3)
# puts "ISBN: #{book.isbn}"
# puts "Price: #{book.price}"
# puts "Price in cents: #{book.price_in_cents}"
# book.price = book.price * 0.75
# puts "New price: #{book.price}"
# book.price_in_cents = 1234
# puts "New price: #{book.price}"
# puts "New price in cents: #{book.price_in_cents}"

# Two more examples

# b2 = BookInStock.new("isbn2", 3.14)
# puts "ISBN: #{b2.isbn} / Price: #{b2.price}"

# b3 = BookInStock.new("isbn3", "5.67")
# puts "ISBN: #{b3.isbn} / Price: #{b3.price}"