require "spec_helper"

describe Live_Action_Film do
  let(:will) { Character.new('Will Turner', 'human', 'Orlando Bloom', 'hero') }
  let(:elizabeth) { Character.new('Elizabeth Swann', 'human', 'Keira Knightley', 'hero') }
  let(:jack) { Character.new('Jack Sparrow', 'human', 'Johnny Depp', 'hero') }
  let(:barbossa) { Character.new('Capt Barbossa', 'human', 'Geoffrey Rush', 'villain') }

  let(:pirates_soundtrack) { Soundtrack.new('Pirates of the Caribbean', [])}

  let(:pirates) { Movie.new('Pirates of the Caribbean', 2003, [will, elizabeth, barbossa]) }

  describe ".new" do
    it "takes a name, year, and character array as arguments" do
      expect(pirates).to be_a(Movie)
    end

    it "initializes with a watch_count of 0" do
      expect(pirates.watch_count).to eq(0)
    end
  end

  describe "#watch_count" do
    it "has a reader" do
      expect(pirates.watch_count).to eq(0)
    end

    it "does not have a writer" do
      expect { pirates.watch_count = 5 }.to raise_error(NoMethodError)
    end
  end

  describe "#watch!" do
    it "increases the watch_count by 2 when we call #watch! two times" do
      pirates.watch!
      pirates.watch!

      expect(pirates.watch_count).to eq(2)
    end
  end

  describe "#characters" do
    it "has a reader for 'characters'" do
      expect(pirates.characters).to eq([will, elizabeth, barbossa])
    end
  end

  describe "#add_character" do
    it "adds a character to the 'characters' array" do
      pirates.add_character(jack)

      expect(aladdin_soundtrack.characters.count).to eq(4)
      expect(aladdin_soundtrack.characters).to include(jack)
    end
  end

  describe "#heroes" do
    it "prints out a list of the heroes" do
      expect(pirates.heroes).to eq("Will Turner\nElizabeth Swann")
    end
  end

  describe "#villains" do
    it "prints out a list of the villains" do
      expect(pirates.villains).to eq("Capt Barbossa")
    end
  end

  describe '#cast' do
    it "prints out the cast" do
      expect(pirates.cast).to eq("Orlando Bloom\nKeira Knightley\nGeoffrey Rush")
    end
  end
end
