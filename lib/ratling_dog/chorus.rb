class Chorus

    def initialize
        @song_line_gen = SongLineGen.new
    end

    def lines()
        @song_line_gen.generate_song_lines(:chorus)
    end
end