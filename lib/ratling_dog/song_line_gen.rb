class SongLineGen 
    def generate_song_lines(verse_number)
        case verse_number
        when 1
            start = 5
            stop = 8
            get_lines(start, stop)
        when 2
            start = 9 
            stop = 12
            get_lines(start, stop) 
        when :chorus
            start = 1
            stop = 4
            get_lines(start, stop)
        end
    end

    private

    def get_lines(starting, ending)
        starting.upto(ending).map{|i| line(i)}.join("\n")
    end

    def line(number)
        case number
        when 1
            "Hi ho, the rattlin' bog,"
        when 2
            "The bog down in the valley-o,"
        when 3
            "Hi ho, the rattlin' bog,"
        when 4 
            "The bog down in the valley-o."
        when 5
            "Now in the bog there was a tree,"
        when 6
            "A rare tree, a rattlin' tree,"
        when 7 
            "The tree in the bog,"
        when 8 
            "And the bog down in the valley-o."
        when 9 
            "And on that tree there was a branch,"
        when 10
            "A rare branch, a rattlin' branch,"
        when 11
            "The branch on the tree, and the tree in the bog,"
        when 12
            "And the bog down in the valley-o."
        end
    end
end