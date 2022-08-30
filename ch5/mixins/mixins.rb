module MarshallsDebug
    def initialize(name)
        @name = name
    end

    def who_am_i?
        puts "#{self.class.name} (\##{self.object_id}): #{@name.to_s}"
    end
end

class Phonograph
    include MarshallsDebug
end

class EightTrack
    include MarshallsDebug
end

ph = Phonograph.new("Folklore by Taylor Swift")
et = EightTrack.new("Evermore by Taylor Swift")

ph.who_am_i?
et.who_am_i?