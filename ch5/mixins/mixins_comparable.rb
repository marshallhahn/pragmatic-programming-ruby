class Person
    include Comparable
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def to_str
        "#{name}"
    end

    def <=>(other)
        self.name <=> other.name
    end
end

marshall = Person.new("Marshall")
lakeland = Person.new("Lakeland")

if marshall > lakeland
    puts "#{marshall.name}'s name > #{lakeland.name}'s name"
end

puts "Sorted list:"
puts [ marshall.name, lakeland.name ].sort