def three_times
    yield
    yield
    yield
end

# three_times { puts "Hello" }

def fib_up_to(max)
    i1, i2 = 1, 2
    while i1 <= max
        yield i1
        i1, i2 = i2, i1 + i2
    end
end

# fib_up_to(1000) { |f| print f, " " }

class Array
    def find
        for i in 0...size
            value = self[i]
            return value if yield(value)
        end
        return nil
    end
end

puts [1, 3, 5, 7, 9].find { |v| v*v > 30 }