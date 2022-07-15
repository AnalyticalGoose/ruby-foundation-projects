require './main.rb'

describe "#caesar_cipher" do
    it "shifts 1" do
        expect(caesar_cipher("aaa", 1)).to eql("bbb")
    end

    it "shifts from z - a" do
        expect(caesar_cipher("zzz", 1)).to eql("aaa")
    end

    it "Hello, World!" do
        expect(caesar_cipher("Hello, World!", 10)).to eql("Rovvy, Gybvn!")
    end

    it "aBcDeFgHiJkLmNoPqRsTuVxYz" do
        expect(caesar_cipher("aBcDeFgHiJkLmNoPqRsTuVxYz", 15)).to eql("pQrStUvWxYzAbCdEfGhIjKmNo")
    end
end
