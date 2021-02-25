require './anagram'

describe Anagram do

  describe ".check" do
    context "given a word and its anagram" do
      it "returns true" do
        expect(Anagram.new("binary","brainy").check).to eq(true)
      end
    end

    context "given a word and soemthing very similar to its anagram" do
      it "returns true" do
        expect(Anagram.new("binary","braine").check).to eq(false)
      end
    end

    context "given a word and a larger word" do
      it "returns false" do
        expect(Anagram.new("binary","binaural").check).to eq(false)
      end
    end

    context "given a word and a smaller word" do
      it "returns false" do
        expect(Anagram.new("binary","bin").check).to eq(false)
      end
    end
  end

end
