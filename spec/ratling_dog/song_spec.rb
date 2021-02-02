require 'spec_helper'

RSpec.describe RatlingDog::Song do 

    describe "#verse" do 
        it "returns the lyrics of a verse given the verse number" do
            file = File.expand_path("spec/fixtures/verse_one_lyrics.txt")
            verse_one_lyrics = File.read(file)
            verse_num = 1
            lyrics = RatlingDog::Song.new.verse(verse_num)
            expect(lyrics).to eq verse_one_lyrics 
        end
    end
    describe "#chorus" do
        it "returns lyrics of song chorus" do
            file = File.expand_path("spec/fixtures/chorus_lyrics.txt")
            chorus_lyrics = File.read(file)

            lyrics = RatlingDog::Song.new.chorus()
            expect(lyrics).to eq chorus_lyrics
        end 
    end

end