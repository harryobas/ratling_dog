class RatlingDog::Song
    def verse(n)
        Verse.new(n).lines()
    end
    def chorus()
        Chorus.new.lines()
    end 
end