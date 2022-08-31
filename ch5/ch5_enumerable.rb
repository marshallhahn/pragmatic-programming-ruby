module Summable
    include Enumerable

    def sum
        inject(:+)
    end
end

class Array
    include Summable
end

class Range
    include Summable
end

class VowelFinder
    include Summable

    def initialize(string)
        @string = string
    end

    def each
        @string.scan(/[aeiou]/) do |vowel|
            yield vowel
        end
    end
end

puts [ 1, 2, 3, 4, 5 ].sum
puts ( 'a'..'m' ).sum

vf = VowelFinder.new("The quick brown fox jumped")
puts vf.sum