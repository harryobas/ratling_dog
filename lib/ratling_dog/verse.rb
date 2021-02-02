class Verse
    
    def initialize(number)
        @number = number
        @song_line_gen = SongLineGen.new
    end

    def lines()
        @song_line_gen.generate_song_lines(@number)
    end
end